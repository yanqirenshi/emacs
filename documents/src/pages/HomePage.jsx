import { useMemo, useState } from 'react'
import { categories, encodingRows, externalTools } from '../data.js'
import Code from '../components/Code.jsx'

export const homeSections = [
  { id: 'overview', label: '概要' },
  { id: 'install', label: 'インストール' },
  { id: 'structure', label: '読み込みの仕組み' },
  { id: 'files', label: '設定ファイル一覧' },
  { id: 'encoding', label: '文字コード' },
  { id: 'tools', label: '外部ツール' },
]

function Overview() {
  const total = categories.reduce((n, c) => n + c.files.length, 0)
  const loaded = categories.reduce((n, c) => n + c.files.filter((f) => f.loaded).length, 0)
  return (
    <section id="overview">
      <h2>概要</h2>
      <p>
        このリポジトリは <a href="https://github.com/yanqirenshi/emacs">yanqirenshi/emacs</a> —
        個人用の Emacs 設定集です。
        設定を <code>~/.emacs.d/init.el</code> に直接書くのではなく、
        機能ごとに分割した小さな設定ファイルを <code>load</code> で読み込むスタイルを取っています。
      </p>
      <div className="stats">
        <div className="stat"><span className="stat-num">{total}</span><span className="stat-label">設定ファイル</span></div>
        <div className="stat"><span className="stat-num">{loaded}</span><span className="stat-label">読み込み中</span></div>
        <div className="stat"><span className="stat-num">3</span><span className="stat-label">対応環境</span></div>
      </div>
      <p>対応環境は Windows (MSYS2)・macOS・Linux (WSL2) の 3 つで、OS ごとの差分は各設定ファイル内の分岐で吸収しています。</p>
    </section>
  )
}

function Install() {
  return (
    <section id="install">
      <h2>インストール</h2>
      <ol>
        <li>
          <p>リポジトリを <code>~/prj/emacs</code> に配置します (各設定はこのパスを前提に load されます)。</p>
          <Code>git clone git@github.com:yanqirenshi/emacs.git ~/prj/emacs</Code>
        </li>
        <li>
          <p>テンプレートを init.el としてコピーします。</p>
          <Code>cp ~/prj/emacs/init.template.el ~/.emacs.d/init.el</Code>
        </li>
        <li>
          <p>
            init.el 内の個人設定 (はてなブログのユーザー / API キー、github.sitter のトークンなど) を埋めます。
          </p>
        </li>
        <li>
          <p>Emacs を起動すると、package.el が必要なパッケージを自動インストールします。</p>
        </li>
      </ol>
    </section>
  )
}

function Structure() {
  return (
    <section id="structure">
      <h2>読み込みの仕組み</h2>
      <p>
        エントリポイントは <code>init.template.el</code> です。
        以下のようなセクション構成で、<code>src/</code> と <code>lisp/</code> のファイルを順番に load します。
      </p>
      <Code>{`init.template.el
├─ Native Compile   (msys2)
├─ font             (font)
├─ My Lisp          (lisp/my, date, dir-and-file)
├─ Package          (package)
├─ Environment      (language, environment, sounds, path, clipboard, ...)
├─ Buffer           (title-bar, tool-bar, cursor, theme, whitespace, ...)
├─ IME              (ddskk)
├─ Text Edit        (org, markdown, picture, open-junk-file)
├─ Lisp             (lsp, spinor, sly, haskell)
├─ Develop          (rjsx-mode, ts-mode, tsx-mode, node, git-gutter, vterm)
├─ AI               (gptel)
├─ Browser          (eww)
└─ My ELisp Libs    (ter-mode, hatena-blog-writer, github.sitter)`}</Code>
      <p>
        ディレクトリの役割は次のとおりです。
      </p>
      <table>
        <thead><tr><th>ディレクトリ</th><th>役割</th></tr></thead>
        <tbody>
          <tr><td><code>src/</code></td><td>機能別の設定ファイル (1 ファイル 1 トピック)</td></tr>
          <tr><td><code>lisp/</code></td><td>自作のユーティリティ関数</td></tr>
          <tr><td><code>documents/</code></td><td>このドキュメントサイト (React)</td></tr>
        </tbody>
      </table>
    </section>
  )
}

function FileCatalog() {
  const [query, setQuery] = useState('')
  const [onlyLoaded, setOnlyLoaded] = useState(false)

  const filtered = useMemo(() => {
    const q = query.trim().toLowerCase()
    return categories
      .map((cat) => ({
        ...cat,
        files: cat.files.filter(
          (f) =>
            (!onlyLoaded || f.loaded) &&
            (q === '' || f.name.toLowerCase().includes(q) || f.desc.toLowerCase().includes(q)),
        ),
      }))
      .filter((cat) => cat.files.length > 0)
  }, [query, onlyLoaded])

  return (
    <section id="files">
      <h2>設定ファイル一覧</h2>
      <div className="filter-bar">
        <input
          type="search"
          placeholder="ファイル名・説明で絞り込み..."
          value={query}
          onChange={(e) => setQuery(e.target.value)}
        />
        <label className="checkbox">
          <input
            type="checkbox"
            checked={onlyLoaded}
            onChange={(e) => setOnlyLoaded(e.target.checked)}
          />
          読み込み中のみ表示
        </label>
      </div>
      {filtered.length === 0 && <p className="empty">該当するファイルがありません。</p>}
      {filtered.map((cat) => (
        <div key={cat.id} className="category">
          <h3>{cat.title}</h3>
          <ul className="file-list">
            {cat.files.map((f) => (
              <li key={f.name} className={f.loaded ? '' : 'not-loaded'}>
                <div className="file-head">
                  <code className="file-name">{f.name}</code>
                  {!f.loaded && <span className="badge">未ロード</span>}
                </div>
                <p className="file-desc">{f.desc}</p>
              </li>
            ))}
          </ul>
        </div>
      ))}
    </section>
  )
}

function Encoding() {
  return (
    <section id="encoding">
      <h2>文字コード</h2>
      <p>
        文字コードは <code>src/language.el</code> で一元管理しています。
        <code>(set-language-environment 'Japanese)</code> をベースに、OS ごとに以下のように分岐します。
      </p>
      <table>
        <thead>
          <tr><th>項目</th><th>Windows</th><th>macOS / Linux (WSL2)</th></tr>
        </thead>
        <tbody>
          {encodingRows.map((r) => (
            <tr key={r.item}>
              <td>{r.item}</td>
              <td><code>{r.windows}</code></td>
              <td><code>{r.unix}</code></td>
            </tr>
          ))}
        </tbody>
      </table>
      <div className="note">
        <strong>注意:</strong> Windows のクリップボードに <code>utf-16-le</code> を指定してはいけません。
        これは <code>utf-16le-with-signature</code> の別名で、コピーのたびに BOM (FF FE) が付き、
        PowerShell への貼り付けが壊れます。デフォルトの <code>utf-16le-dos</code> (BOM なし) をそのまま使います。
      </div>
      <p>
        SKK の辞書 (辞書サーバ・個人辞書 <code>~/.skk-jisyo</code>) は慣習どおり <code>euc-jp</code> です。
      </p>
    </section>
  )
}

function Tools() {
  return (
    <section id="tools">
      <h2>外部ツール</h2>
      <p>Emacs の外側で、あらかじめ以下のツールをインストールしておく必要があります。</p>
      <table>
        <thead><tr><th>環境</th><th>コマンド</th><th>用途</th></tr></thead>
        <tbody>
          {externalTools.map((t) => (
            <tr key={t.command}>
              <td>{t.os}</td>
              <td><code>{t.command}</code></td>
              <td>{t.purpose}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </section>
  )
}

export default function HomePage() {
  return (
    <>
      <Overview />
      <Install />
      <Structure />
      <FileCatalog />
      <Encoding />
      <Tools />
    </>
  )
}
