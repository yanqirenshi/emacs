import { useEffect, useState } from 'react'
import HomePage, { homeSections } from './pages/HomePage.jsx'
import TypeScriptPage, { tsSections } from './pages/TypeScriptPage.jsx'

const pages = {
  home: {
    label: 'ホーム',
    href: '#/',
    component: HomePage,
    sections: homeSections,
    anchorHref: (id) => `#${id}`,
  },
  typescript: {
    label: 'TypeScript',
    href: '#/typescript',
    component: TypeScriptPage,
    sections: tsSections,
    anchorHref: (id) => `#/typescript/${id}`,
  },
}

// '#/typescript/setup' → { page: 'typescript', anchor: 'setup' }
// '#overview' (ホームの素のアンカー) → { page: 'home', anchor: 'overview' }
function parseHash(hash) {
  if (hash.startsWith('#/')) {
    const [page, anchor] = hash.slice(2).split('/')
    return { page: pages[page] ? page : 'home', anchor: anchor || '' }
  }
  return { page: 'home', anchor: hash.slice(1) }
}

export default function App() {
  const [route, setRoute] = useState(() => parseHash(window.location.hash))

  useEffect(() => {
    const onHash = () => setRoute(parseHash(window.location.hash))
    window.addEventListener('hashchange', onHash)
    return () => window.removeEventListener('hashchange', onHash)
  }, [])

  useEffect(() => {
    if (route.anchor) {
      document.getElementById(route.anchor)?.scrollIntoView()
    } else {
      window.scrollTo(0, 0)
    }
  }, [route])

  const current = pages[route.page]
  const Page = current.component

  return (
    <div className="layout">
      <nav className="sidebar">
        <div className="brand">
          <span className="brand-mark">λ</span>
          <div>
            <div className="brand-title">yanqirenshi/emacs</div>
            <div className="brand-sub">設定ドキュメント</div>
          </div>
        </div>
        <div className="nav-group-title">ページ</div>
        <ul>
          {Object.entries(pages).map(([key, p]) => (
            <li key={key}>
              <a className={route.page === key ? 'active' : ''} href={p.href}>
                {p.label}
              </a>
            </li>
          ))}
        </ul>
        <div className="nav-group-title">セクション</div>
        <ul className="nav-sections">
          {current.sections.map((s) => (
            <li key={s.id}>
              <a href={current.anchorHref(s.id)}>{s.label}</a>
            </li>
          ))}
        </ul>
        <div className="sidebar-footer">
          <a href="https://github.com/yanqirenshi/emacs">GitHub</a>
        </div>
      </nav>
      <main>
        <Page />
        <footer>© 2015- Satoshi Iwasaki</footer>
      </main>
    </div>
  )
}
