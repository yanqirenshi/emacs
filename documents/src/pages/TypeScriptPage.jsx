import Code from '../components/Code.jsx'

export const tsSections = [
  { id: 'overview', label: '概要' },
  { id: 'setup', label: 'セットアップ' },
  { id: 'usage', label: '利用方法' },
  { id: 'troubleshooting', label: 'トラブルシューティング' },
]

function Overview() {
  return (
    <section id="overview">
      <h2>TypeScript — 概要</h2>
      <p>
        TypeScript / TSX の編集環境は、Emacs 内蔵の tree-sitter モードと lsp-mode の組み合わせで構成しています。
        関連する設定ファイルは次の 4 つです。
      </p>
      <table>
        <thead><tr><th>ファイル</th><th>役割</th></tr></thead>
        <tbody>
          <tr>
            <td><code>src/ts-mode.el</code></td>
            <td><code>.ts</code> を <code>typescript-ts-mode</code> に関連付け。インデント 2、LSP 自動起動</td>
          </tr>
          <tr>
            <td><code>src/tsx-mode.el</code></td>
            <td><code>.tsx</code> を <code>tsx-ts-mode</code> に関連付け。auto-rename-tag / emmet-mode を有効化</td>
          </tr>
          <tr>
            <td><code>src/lsp.el</code></td>
            <td>lsp-mode 本体。lsp-ui (ドキュメント表示)・company (補完) の設定</td>
          </tr>
          <tr>
            <td><code>src/node.el</code></td>
            <td>Windows で Volta の bin を PATH に追加 (言語サーバの検出用)</td>
          </tr>
        </tbody>
      </table>
      <p>セットアップが完了すると、次の機能が使えます。</p>
      <ul>
        <li>tree-sitter による正確なシンタックスハイライトとインデント</li>
        <li>LSP による補完・定義ジャンプ・参照検索・リネーム・エラー診断</li>
        <li>カーソル位置の型情報・ドキュメント表示 (lsp-ui)</li>
        <li>TSX でのタグ自動リネーム (auto-rename-tag) と省略記法展開 (emmet-mode)</li>
      </ul>
    </section>
  )
}

function Setup() {
  return (
    <section id="setup">
      <h2>セットアップ</h2>
      <p>外部ツールが 3 種類必要です。上から順にインストールします。</p>

      <h3>1. Node.js (Volta 推奨)</h3>
      <p>
        Node.js は <a href="https://volta.sh/">Volta</a> でインストールします。
        <code>src/node.el</code> が Volta の bin ディレクトリを PATH に追加するためです。
      </p>
      <Code>{`winget install Volta.Volta
volta install node`}</Code>

      <h3>2. TypeScript と言語サーバ</h3>
      <p>tsc (コンパイラ) と typescript-language-server をグローバルにインストールします。</p>
      <Code>npm install -g typescript typescript-language-server</Code>
      <p>インストールできたかは次で確認します。</p>
      <Code>{`typescript-language-server --version
tsc --version`}</Code>
      <p>Emacs 側から見えているかは <code>M-:</code> で次を評価して確認します。</p>
      <Code>(executable-find "typescript-language-server")</Code>

      <h3>3. tree-sitter 文法</h3>
      <p>
        <code>typescript-ts-mode</code> / <code>tsx-ts-mode</code> は tree-sitter の文法ライブラリが必須です。
        未インストールだとファイルを開いてもモードが正しく動きません。
        <code>*scratch*</code> などで以下を評価してインストールします (要 C コンパイラ。Windows は MSYS2 の gcc を利用)。
      </p>
      <Code>{`(setq treesit-language-source-alist
      '((typescript "https://github.com/tree-sitter/tree-sitter-typescript"
                    "master" "typescript/src")
        (tsx        "https://github.com/tree-sitter/tree-sitter-typescript"
                    "master" "tsx/src")))

(treesit-install-language-grammar 'typescript)
(treesit-install-language-grammar 'tsx)`}</Code>
      <p>
        文法は <code>~/.emacs.d/tree-sitter/</code> に配置されます。
        インストールできたかは次で確認します (<code>t</code> が返れば OK)。
      </p>
      <Code>{`(treesit-language-available-p 'typescript)
(treesit-language-available-p 'tsx)`}</Code>
    </section>
  )
}

function Usage() {
  return (
    <section id="usage">
      <h2>利用方法</h2>
      <p>
        <code>.ts</code> / <code>.tsx</code> ファイルを開くと自動でメジャーモードが起動し、
        <code>lsp-deferred</code> 経由で言語サーバに接続します。
        初回はプロジェクトルートの確認を求められるので <kbd>i</kbd> (import project) を選びます。
      </p>

      <h3>よく使う操作</h3>
      <table>
        <thead><tr><th>キー / コマンド</th><th>機能</th></tr></thead>
        <tbody>
          <tr><td><kbd>M-.</kbd></td><td>定義へジャンプ</td></tr>
          <tr><td><kbd>M-,</kbd></td><td>ジャンプ元へ戻る</td></tr>
          <tr><td><kbd>M-?</kbd></td><td>参照を検索</td></tr>
          <tr><td><code>M-x lsp-rename</code></td><td>シンボルをリネーム</td></tr>
          <tr><td><code>M-x lsp-format-buffer</code></td><td>バッファ全体をフォーマット</td></tr>
          <tr><td><code>M-x flycheck-list-errors</code></td><td>エラー・警告の一覧</td></tr>
          <tr><td><code>M-x lsp-describe-session</code></td><td>LSP セッションの状態確認</td></tr>
        </tbody>
      </table>
      <p>
        補完は company が自動で表示します (入力 1 文字目から・遅延なし)。
        カーソル位置の型情報とドキュメントは lsp-ui がその場に表示します。
      </p>

      <h3>TSX での追加機能</h3>
      <ul>
        <li>
          <strong>auto-rename-tag</strong> — 開始タグを書き換えると閉じタグも自動で追従します。
        </li>
        <li>
          <strong>emmet-mode</strong> — <code>div.container</code> のような省略記法を{' '}
          <kbd>C-j</kbd> で展開します。className 展開 (<code>emmet-expand-jsx-className?</code>) が有効です。
        </li>
      </ul>

      <h3>インデント</h3>
      <p><code>typescript-ts-mode-indent-offset</code> は 2 スペースに設定しています。</p>
    </section>
  )
}

function Troubleshooting() {
  return (
    <section id="troubleshooting">
      <h2>トラブルシューティング</h2>
      <table>
        <thead><tr><th>症状</th><th>原因と対処</th></tr></thead>
        <tbody>
          <tr>
            <td>「Unable to find installed server supporting this file」</td>
            <td>
              typescript-language-server が見つかっていません。
              <code>npm install -g typescript-language-server typescript</code> を実行し、
              Emacs を再起動します。Windows では Volta の bin が PATH に入っているか
              (<code>src/node.el</code> が読み込まれているか) も確認します。
            </td>
          </tr>
          <tr>
            <td>ハイライトが効かない / モードが起動しない</td>
            <td>
              tree-sitter 文法が未インストールです。
              セットアップの手順 3 を実行します。
              <code>(treesit-language-available-p 'typescript)</code> が <code>nil</code> ならこれが原因です。
            </td>
          </tr>
          <tr>
            <td>文法のコンパイルに失敗する (Windows)</td>
            <td>
              C コンパイラが必要です。MSYS2 (<code>C:\msys64\ucrt64\bin</code>) に gcc が
              入っているか確認します。<code>src/msys2.el</code> がこのパスを PATH に追加しています。
            </td>
          </tr>
          <tr>
            <td>LSP の動作が重い</td>
            <td>
              <code>src/lsp.el</code> の <code>lsp-idle-delay</code> (既定 0.5 秒) を大きくします。
              デバッグには <code>lsp-log-io</code> を <code>t</code> にして{' '}
              <code>*lsp-log*</code> バッファを確認します。
            </td>
          </tr>
        </tbody>
      </table>

      <div className="note">
        <strong>既知の課題:</strong> <code>src/lsp.el</code> の LSP 起動フックには旧モード名の{' '}
        <code>typescript-mode</code> が残っていますが、実際に使われるのは{' '}
        <code>typescript-ts-mode</code> (設定は <code>src/ts-mode.el</code> 側) なので動作には影響しません。
        また TS 向けの起動フックが 2 ファイルに重複しています。整理予定です。
      </div>
    </section>
  )
}

export default function TypeScriptPage() {
  return (
    <>
      <Overview />
      <Setup />
      <Usage />
      <Troubleshooting />
    </>
  )
}
