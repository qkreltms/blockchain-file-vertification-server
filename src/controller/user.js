module.exports = (conn) => {
  const md5 = require('md5')
  const api = require('express').Router()

  // @desc: 유저 출력
  // @url: http://localhost:3002/api/user/persons/
  // @method: POST
  api.post('/persons', (req, res) => {
    const userId = req.body.id
    const userPw = req.body.password

    const query = `SELECT * FROM tblloginuserinfo WHERE strID='${userId}' AND strPassword='${userPw}'`
    console.log('The query is: ', query)

    conn.query(query, (err, rows) => {
      if (err) return res.status(500).json(err)

      console.log('The solution is: ', rows)

      res.cookie('user', md5(rows[0].uidUserInfo), {
        expires: new Date(Date.now() + 900000),
        httpOnly: true
      })

      return res.json(rows)
    })
  })

  return api
}
