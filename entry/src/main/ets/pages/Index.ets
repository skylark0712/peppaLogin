@Entry
@Component
struct Index {
  build() {
    Column({ space: 10 }) {
      Image($r('app.media.img_2'))
        .width(80)
        .borderRadius(50)
        .margin({ top: '120vp' })
      Text('欢迎登录小猫舍')
        .fontColor(Color.Gray)
        .fontSize(14)
        .margin({ top: '15vp' })
      TextInput({ placeholder: '请输入用户名' })
        .margin({ top: '10vp' })
      TextInput({ placeholder: '请输入密码' })
        .type(InputType.Password)
      Row() {
        Text('短信验证码登录').fontColor('#007DFF')
          .fontSize(12)
          .margin({ left: 5 })
        Text('忘记密码').fontColor('#007DFF')
          .fontSize(12)
          .margin({ right: 5 })
      }.width('100%').justifyContent(FlexAlign.SpaceBetween)

      Button('登录').width('100%')
      Text('注册账号').fontColor('#007DFF').fontSize(14)
      LoadingProgress().width(50).color(Color.Blue)
      Blank()
      Row() {
        Line().width('30%').height(0.5).backgroundColor(Color.Gray)
        Text('其他登录方式').fontSize(14).fontColor(Color.Gray)
          .margin({
            left: 10,
            right: 10
          })
        Line().width('30%').height(0.5).backgroundColor(Color.Gray)
      }

      Row({ space: 50 }) {
        Button() {
          Image($r('app.media.wechat')).height(35)
        }.backgroundColor(Color.Transparent)

        Button() {
          Image($r('app.media.tiktok')).height(35)
        }.backgroundColor(Color.Transparent)

        Button() {
          Image($r('app.media.weibo')).height(35)
        }.backgroundColor(Color.Transparent)
      }.width('100%').justifyContent(FlexAlign.Center)
    }
    .backgroundImage($r('app.media.Snipaste'))
    .backgroundImageSize({
      height: '100%'
    })
    .border({ width: 1 })
    .padding({
      left: '10vp',
      right: '10vp'
    })
    .width('100%')
    .height('100%')
    .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])
  }
}