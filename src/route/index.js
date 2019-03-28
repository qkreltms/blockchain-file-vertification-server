module.exports = (router) => {
  const user = require('../controller/user')
  const initializeDB = require('../config/db')

  /**
   * @param(conn): 초기화된 db 객체
   */
  initializeDB((conn) => {
    router.use('/user', user(conn))
  })

  return router
}
