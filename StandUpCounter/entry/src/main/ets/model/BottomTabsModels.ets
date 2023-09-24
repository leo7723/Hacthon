import { BottomTabsItem } from '../common/bean/BottomTabsItem';

export const BottomTabsList: Array<BottomTabsItem> = [
  {
    icon: $r('app.media.ic_home'),
    iconSelected: $r('app.media.ic_home_selected'),
    text: $r('app.string.bottom_text_status')
  },
  {
    icon: $r('app.media.ic_mine'),
    iconSelected: $r('app.media.ic_mine_selected'),
    text: $r('app.string.bottom_text_settings')
  }
]