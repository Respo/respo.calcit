
import { main_BANG_ } from "./js-out/respo.main.mjs"

main_BANG_()

if (import.meta.hot) {
  import.meta.hot.accept('./js-out/respo.main.mjs', (main) => {
    main.reload_BANG_()
  })
}
