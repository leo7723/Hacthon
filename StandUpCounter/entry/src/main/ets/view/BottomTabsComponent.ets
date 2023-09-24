import { BottomTabsItem } from '../common/bean/BottomTabsItem';
import { CommonConstants as Const } from '../common/constants/CommonConstants';
import { BottomTabsList } from '../model/BottomTabsModels';

function getTabImgSrc(item: BottomTabsItem, index: number) {
  let imgSrc = item.icon;
  if (BottomTabsList.indexOf(item) === index) {
    imgSrc = item.iconSelected;
  }
  return imgSrc;
}

function getTabTextColor(item: BottomTabsItem, index: number) {
  let color = $r('app.color.bottom_tabs_font_color');
  if (BottomTabsList.indexOf(item) === index) {
    color = $r('app.color.bottom_tabs_font_color_selected');
  }
  return color;
}

@Component
export struct BottomTabs {
  @Link bottomTabIndex: number;

  build() {
    Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center }) {
      ForEach(BottomTabsList, (item: BottomTabsItem) => {
        Column() {
          Image(getTabImgSrc(item, this.bottomTabIndex))
            .width(Const.ICON_SIZE)
            .height(Const.ICON_SIZE)
            .objectFit(ImageFit.Contain)
            .margin({ bottom: $r('app.float.bottom_margin') })

          Text(item.text)
            .fontSize($r('app.float.bottom_font_size'))
            .opacity(Const.OPACITY)
            .fontColor(getTabTextColor(item, this.bottomTabIndex))
        }
        .width(Const.BAR_WEIGHT)
        .onClick(() => {
          this.bottomTabIndex = BottomTabsList.indexOf(item);
        })
      }, item => JSON.stringify(item))
    }
    .width(Const.FULL_SIZE)
    .height(Const.BAR_HEIGHT)
    .border({ width: { top: Const.BORDER_WIDTH }, color: $r('app.color.color_border') })
    .backgroundColor($r('app.color.bottom_tabs_background_color'))
  }
}