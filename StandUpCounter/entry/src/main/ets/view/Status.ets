@Preview
@Component
export struct Status {

  build() {
    Row() {
      Column() {
        Text("Status")
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}