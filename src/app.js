/**
 * 앱을 실행시키려면 README.md 파일을 봐주세요.
 * 
 * 1. eslint가 적용되어있습니다. 원하시면 .eslintrc.js 파일을 삭제해 비활성화 하셔도 됩니다.
 * 2. yarn(혹은 npm)을 글로벌로 설치하시면, yarn dev(개발자 모드) 혹은 yarn start(프로덕션 모드) 명령어로 앱을 실행시킬 수 있습니다. 
 * yarn 없이 실행 하시려면 cd src, node app.js 
 * 3. 코드는 최대한 보기좋게 분리했습니다. cotroller 파일에는 라우터를 넣고, route에는 추가된 controller를 불러와 사용합니다. config파일에는 각종 설정파일이 있습니다. 
 * 공개되어서는 안되는 데이터(ex: 데이터베이스 id, password)는 .env파일에 넣고 런타임에 불러오도록 했습니다. (process.env)
 */
const express = require('express')
const app = express()
const router = express.Router()

const config = require('./config')
const helmet = require('helmet')
const bodyParser = require('body-parser')

// @development 설정 파일
require('./config/development')(app)
// @production 설정 파일
require('./config/production')(app)
// 보안 설정 
app.use(helmet())
// static 설정
app.use(express.static('public'))
// post 요청을 사용하기 위한 설정
app.use(bodyParser.urlencoded({
  extended: false,
  limit: '100mb'
}))
app.use(bodyParser.json())

app.use('/api', require('./route')(router))

app.listen(config.PORT, () => {
  console.log(`listening port: " ${config.PORT}...`)
})
