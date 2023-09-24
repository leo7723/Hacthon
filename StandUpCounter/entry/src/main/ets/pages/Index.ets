import { Settings } from '../view/Settings';
import { Status } from '../view/Status';
import { CommonConstants as Const } from '../common/constants/CommonConstants';
import { BottomTabs } from '../view/BottomTabsComponent';

@Entry
@Preview
@Component
struct Index {
  @State message: string = 'Hello World'

  @State @Watch('onIndexChange') bottomTabIndex: number = 0;
  private controller: TabsController = new TabsController();

  onIndexChange() {
    this.controller.changeIndex(this.bottomTabIndex);
  }

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.End, justifyContent: FlexAlign.End }) {
      Tabs({ barPosition: BarPosition.End, index: 0, controller: this.controller }) {
        TabContent() {
          Status()
        }

        TabContent() {
          Settings()
        }
      }
      .width(Const.FULL_PERCENT)
      .vertical(false)
      .scrollable(true)
      .barHeight(0)
      .onChange((index: number) => {
        this.bottomTabIndex = index;
      })

      BottomTabs({ bottomTabIndex: $bottomTabIndex })
    }.height('100%')
  }
}