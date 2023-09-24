@Component
export struct Settings {

  build() {
    Row() {
      Column() {
        Text("Settings")
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}