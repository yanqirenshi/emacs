// リポジトリ内の設定ファイルのカタログ。
// loaded: init.template.el から load されているかどうか。

export const categories = [
  {
    id: 'native-compile',
    title: 'Native Compile',
    files: [
      { name: 'src/msys2.el', loaded: true, desc: 'MSYS2 (ucrt64) を PATH に追加。Native Compile 用。' },
    ],
  },
  {
    id: 'font',
    title: 'フォント',
    files: [
      { name: 'src/font.el', loaded: true, desc: '日本語フォント設定。みかちゃん → mikachan → ＭＳ ゴシック の順で選択。' },
      { name: 'src/font-mac.el', loaded: false, desc: 'macOS 用フォント設定 (Menlo + ヒラギノ角ゴ)。' },
    ],
  },
  {
    id: 'my-lisp',
    title: '自作 Lisp',
    files: [
      { name: 'lisp/my.el', loaded: true, desc: 'コード整形 (untabify + indent + 行末空白削除) などの自作関数。' },
      { name: 'lisp/date.el', loaded: true, desc: '日付・時刻挿入コマンド (insert-current-date / insert-current-time)。' },
      { name: 'lisp/dir-and-file.el', loaded: true, desc: 'sudo で開き直し (reopen-with-sudo) 等のユーティリティ。' },
      { name: 'lisp/modeline.el', loaded: true, desc: 'モードラインの文字コード表記を U8 / SJIS / EUC などの短縮形に。' },
    ],
  },
  {
    id: 'package',
    title: 'パッケージ管理',
    files: [
      { name: 'src/package.el', loaded: true, desc: 'package.el の設定。GNU / MELPA / jcs-elpa / NonGNU を登録し、magit・ddskk などを一括インストール。' },
      { name: 'src/el-get.el', loaded: false, desc: 'el-get によるパッケージ管理 (旧方式)。' },
    ],
  },
  {
    id: 'environment',
    title: '環境',
    files: [
      { name: 'src/language.el', loaded: true, desc: '日本語環境と OS 別の文字コード設定。' },
      { name: 'src/environment.el', loaded: true, desc: '起動画面抑止、インデント、recentf などの基本設定。' },
      { name: 'src/sounds.el', loaded: true, desc: 'ビープ音を無効化。' },
      { name: 'src/path.el', loaded: true, desc: 'exec-path-from-shell で PATH / LANG をシェルから引き継ぎ。' },
      { name: 'src/clipboard.el', loaded: true, desc: 'クリップボード連携。WSL2 では wl-copy → xclip → clip.exe の順にフォールバック。' },
      { name: 'src/auth-source.el', loaded: true, desc: 'auth-source の設定と Gemini API キー取得関数 (gemini-api-key)。' },
    ],
  },
  {
    id: 'buffer',
    title: 'バッファ・見た目',
    files: [
      { name: 'src/title-bar.el', loaded: true, desc: 'タイトルバーにホスト名とファイル名を表示。' },
      { name: 'src/tool-bar.el', loaded: true, desc: 'ツールバーを非表示。' },
      { name: 'src/menu-bar.el', loaded: true, desc: 'メニューバーを表示。' },
      { name: 'src/cursor.el', loaded: true, desc: 'カーソル行のハイライト (hl-line)。' },
      { name: 'src/mode-line.el', loaded: true, desc: '行番号・桁番号・時刻・バッテリー・ファイルサイズ表示。' },
      { name: 'src/theme.el', loaded: true, desc: 'tango テーマを適用。' },
      { name: 'src/buffer.el', loaded: true, desc: '括弧の対応表示、行の折り返しなど。' },
      { name: 'src/whitespace.el', loaded: true, desc: '全角スペース・タブ・行末空白の可視化。' },
      { name: 'src/color-theme.el', loaded: false, desc: '旧 color-theme パッケージの設定。' },
      { name: 'src/global-whitespace-mode.el', loaded: false, desc: '全角スペース可視化 (旧設定)。' },
      { name: 'src/powerline-theme.el', loaded: false, desc: 'powerline の自作テーマ。' },
      { name: 'src/pretty-symbols.el', loaded: false, desc: 'lambda などを記号で表示。' },
      { name: 'src/tabbar.el', loaded: false, desc: 'tabbar (バッファのタブ表示) 設定。' },
    ],
  },
  {
    id: 'ime',
    title: 'IME (日本語入力)',
    files: [
      { name: 'src/ddskk.el', loaded: true, desc: 'SKK 日本語入力。辞書サーバ (crvskkserv) と個人辞書 ~/.skk-jisyo を利用。' },
    ],
  },
  {
    id: 'text-edit',
    title: 'テキスト編集',
    files: [
      { name: 'src/org.el', loaded: true, desc: 'org-capture テンプレート 6 種と、~/org.notes/ の git 自動コミット・push。' },
      { name: 'src/markdown.el', loaded: true, desc: 'markdown-mode。pandoc でプレビュー、orgtbl-mode で表編集。' },
      { name: 'src/picture.el', loaded: true, desc: '*.pic を picture-mode に関連付け。' },
      { name: 'src/open-junk-file.el', loaded: true, desc: '日付付きジャンクファイル作成 (C-x j)。' },
    ],
  },
  {
    id: 'lisp-dev',
    title: 'Lisp・言語',
    files: [
      { name: 'src/lsp.el', loaded: true, desc: 'lsp-mode / lsp-ui / company。TypeScript・Rust・Spinor 向け。' },
      { name: 'src/spinor.el', loaded: true, desc: '自作言語 Spinor のメジャーモードを読み込み (*.spin)。' },
      { name: 'src/sly.el', loaded: true, desc: 'SLY (Common Lisp)。デフォルト処理系は Spinor。' },
      { name: 'src/haskell.el', loaded: true, desc: 'haskell-mode + lsp-haskell + company。' },
    ],
  },
  {
    id: 'develop',
    title: '開発',
    files: [
      { name: 'src/rjsx-mode.el', loaded: true, desc: '*.js を rjsx-mode に関連付け。' },
      { name: 'src/ts-mode.el', loaded: true, desc: 'typescript-ts-mode + LSP。' },
      { name: 'src/tsx-mode.el', loaded: true, desc: '*.tsx 用設定。auto-rename-tag / emmet-mode。' },
      { name: 'src/node.el', loaded: true, desc: 'Windows で Volta の bin を PATH に追加。' },
      { name: 'src/git-gutter.el', loaded: true, desc: '変更行をフリンジに表示。' },
      { name: 'src/vterm.el', loaded: true, desc: 'vterm ターミナル (Windows 以外で有効)。' },
    ],
  },
  {
    id: 'ai',
    title: 'AI',
    files: [
      { name: 'src/gptel.el', loaded: true, desc: 'gptel + Gemini。API キーは auth-source から取得。' },
      { name: 'src/ellama.el', loaded: false, desc: 'Ellama + llm-gemini。API キーは環境変数 GEMINI_API_KEY。' },
      { name: 'src/llm.el', loaded: false, desc: 'gptel の下書き設定 (未使用)。' },
    ],
  },
  {
    id: 'browser',
    title: 'ブラウザ',
    files: [
      { name: 'src/eww.el', loaded: true, desc: 'ブラウザを EWW (Emacs 内蔵) に設定。' },
      { name: 'src/navi2ch.el', loaded: false, desc: 'navi2ch (2ch ブラウザ) 設定。' },
    ],
  },
  {
    id: 'my-libs',
    title: '自作 ELisp ライブラリ',
    files: [
      { name: 'src/ter-mode.el', loaded: true, desc: '*.ter を picture-mode に関連付け (T-ER 図用)。' },
      { name: 'src/hatena-blog-writer.el', loaded: true, desc: 'はてなブログ投稿ツール (~/prj/hatena-blog-writer) の読み込み。' },
    ],
  },
]

export const encodingRows = [
  { item: '優先・デフォルト文字コード', windows: 'utf-8-dos', unix: 'utf-8-unix' },
  { item: 'ターミナル・キーボード', windows: 'utf-8-dos', unix: 'utf-8-unix' },
  { item: 'クリップボード', windows: 'utf-16le-dos (デフォルトのまま・BOM なし)', unix: 'utf-8-unix' },
  { item: 'ファイル名', windows: 'cp932', unix: 'utf-8-unix' },
]

export const externalTools = [
  { os: 'Windows', command: 'winget install GnuPG.Gpg4win', purpose: 'auth-source (~/.authinfo.gpg) 用の GPG' },
  { os: 'Windows', command: 'winget install JohnMacFarlane.Pandoc', purpose: 'Markdown プレビュー' },
  { os: 'WSL2', command: 'sudo apt install wl-clipboard', purpose: 'Wayland クリップボード連携' },
  { os: 'WSL2', command: 'sudo apt install xclip', purpose: 'X11 クリップボード連携' },
  { os: 'WSL2', command: 'sudo apt install pandoc', purpose: 'Markdown プレビュー' },
]
