.class public Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;
.super Ljava/lang/Object;
.source "TabSwitcherModel.java"

# interfaces
.implements Lde/mrapp/android/tabswitcher/model/Model;


# static fields
.field private static final APPLY_PADDING_TO_TABS_EXTRA:Ljava/lang/String;

.field private static final CLEAR_SAVED_STATES_WHEN_REMOVING_TABS_EXTRA:Ljava/lang/String;

.field private static final LOG_LEVEL_EXTRA:Ljava/lang/String;

.field private static final PADDING_EXTRA:Ljava/lang/String;

.field public static final REFERENCE_TAB_INDEX_EXTRA:Ljava/lang/String;

.field public static final REFERENCE_TAB_POSITION_EXTRA:Ljava/lang/String;

.field private static final SELECTED_TAB_INDEX_EXTRA:Ljava/lang/String;

.field private static final SHOW_TOOLBARS_EXTRA:Ljava/lang/String;

.field private static final SWITCHER_SHOWN_EXTRA:Ljava/lang/String;

.field private static final TABS_EXTRA:Ljava/lang/String;

.field private static final TAB_BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

.field private static final TAB_CLOSE_BUTTON_ICON_BITMAP_EXTRA:Ljava/lang/String;

.field private static final TAB_CLOSE_BUTTON_ICON_ID_EXTRA:Ljava/lang/String;

.field private static final TAB_CLOSE_BUTTON_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

.field private static final TAB_CLOSE_BUTTON_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

.field private static final TAB_CONTENT_BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

.field private static final TAB_ICON_BITMAP_EXTRA:Ljava/lang/String;

.field private static final TAB_ICON_ID_EXTRA:Ljava/lang/String;

.field private static final TAB_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

.field private static final TAB_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

.field private static final TAB_PREVIEW_FADE_DURATION:Ljava/lang/String;

.field private static final TAB_PREVIEW_FADE_THRESHOLD_EXTRA:Ljava/lang/String;

.field private static final TAB_PROGRESS_BAR_COLOR_EXTRA:Ljava/lang/String;

.field private static final TAB_TITLE_TEXT_COLOR_EXTRA:Ljava/lang/String;

.field private static final TOOLBAR_NAVIGATION_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

.field private static final TOOLBAR_NAVIGATION_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

.field private static final TOOLBAR_TITLE_EXTRA:Ljava/lang/String;


# instance fields
.field private addTabButtonColor:Landroid/content/res/ColorStateList;

.field private addTabButtonListener:Lde/mrapp/android/tabswitcher/AddTabButtonListener;

.field private applyPaddingToTabs:Z

.field private clearSavedStatesWhenRemovingTabs:Z

.field private contentRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;

.field private decorator:Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

.field private emptyView:Landroid/view/View;

.field private emptyViewAnimationDuration:J

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lde/mrapp/android/tabswitcher/model/Model$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private logLevel:Lde/mrapp/android/util/logging/LogLevel;

.field private padding:[I

.field private referenceTabIndex:I

.field private referenceTabPosition:F

.field private selectedTab:Lde/mrapp/android/tabswitcher/Tab;

.field private showToolbars:Z

.field private switcherShown:Z

.field private tabBackgroundColor:Landroid/content/res/ColorStateList;

.field private tabCloseButtonIconBitmap:Landroid/graphics/Bitmap;

.field private tabCloseButtonIconId:I

.field private tabCloseButtonIconTintList:Landroid/content/res/ColorStateList;

.field private tabCloseButtonIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final tabCloseListeners:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/tabswitcher/TabCloseListener;",
            ">;"
        }
    .end annotation
.end field

.field private tabContentBackgroundColor:I

.field private tabIconBitmap:Landroid/graphics/Bitmap;

.field private tabIconId:I

.field private tabIconTintList:Landroid/content/res/ColorStateList;

.field private tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private tabPreviewFadeDuration:J

.field private tabPreviewFadeThreshold:J

.field private final tabPreviewListeners:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/tabswitcher/TabPreviewListener;",
            ">;"
        }
    .end annotation
.end field

.field private tabProgressBarColor:I

.field private final tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

.field private tabTitleTextColor:Landroid/content/res/ColorStateList;

.field private tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private toolbarMenuId:I

.field private toolbarMenuItemListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private toolbarNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private toolbarNavigationIconListener:Landroid/view/View$OnClickListener;

.field private toolbarNavigationIconTintList:Landroid/content/res/ColorStateList;

.field private toolbarNavigationIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private toolbarTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::ReferenceTabIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->REFERENCE_TAB_INDEX_EXTRA:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::ReferenceTabPosition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->REFERENCE_TAB_POSITION_EXTRA:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::LogLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->LOG_LEVEL_EXTRA:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::Tabs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TABS_EXTRA:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::SwitcherShown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->SWITCHER_SHOWN_EXTRA:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::SelectedTabIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->SELECTED_TAB_INDEX_EXTRA:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::Padding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->PADDING_EXTRA:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::ApplyPaddingToTabs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->APPLY_PADDING_TO_TABS_EXTRA:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 123
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabIconId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_ID_EXTRA:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabIconBitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_BITMAP_EXTRA:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabIconTintList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 143
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabIconTintMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 149
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabBackgroundColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabContentBackgroundColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CONTENT_BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 163
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabTitleTextColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_TITLE_TEXT_COLOR_EXTRA:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 170
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabCloseButtonIconId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_ID_EXTRA:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 176
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabCloseButtonIconBitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_BITMAP_EXTRA:Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 183
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabCloseButtonIconTintList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 190
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabCloseButtonIconTintMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabProgressBarColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_PROGRESS_BAR_COLOR_EXTRA:Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 204
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::ShowToolbars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->SHOW_TOOLBARS_EXTRA:Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 210
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::ToolbarTitle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TOOLBAR_TITLE_EXTRA:Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 217
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::ToolbarNavigationIconTintList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TOOLBAR_NAVIGATION_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 224
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::ToolbarNavigationIconTintMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TOOLBAR_NAVIGATION_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 231
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabPreviewFadeThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_PREVIEW_FADE_THRESHOLD_EXTRA:Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::TabPreviewFadeDuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_PREVIEW_FADE_DURATION:Ljava/lang/String;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::ClearSavedStatesWhenRemovingTabs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->CLEAR_SAVED_STATES_WHEN_REMOVING_TABS_EXTRA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 5

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab switcher may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 905
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    const/4 p1, -0x1

    .line 906
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->referenceTabIndex:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 907
    iput v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->referenceTabPosition:F

    .line 908
    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->INFO:Lde/mrapp/android/util/logging/LogLevel;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->logLevel:Lde/mrapp/android/util/logging/LogLevel;

    .line 909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 910
    iput-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->switcherShown:Z

    const/4 v1, 0x0

    .line 911
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    .line 912
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->decorator:Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    .line 913
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->contentRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;

    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 914
    fill-array-data v2, :array_0

    iput-object v2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->padding:[I

    const/4 v2, 0x1

    .line 915
    iput-boolean v2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->applyPaddingToTabs:Z

    .line 916
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconId:I

    .line 917
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconBitmap:Landroid/graphics/Bitmap;

    .line 918
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabBackgroundColor:Landroid/content/res/ColorStateList;

    .line 919
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabContentBackgroundColor:I

    .line 920
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabTitleTextColor:Landroid/content/res/ColorStateList;

    .line 921
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconId:I

    .line 922
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconBitmap:Landroid/graphics/Bitmap;

    .line 923
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabProgressBarColor:I

    .line 924
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addTabButtonListener:Lde/mrapp/android/tabswitcher/AddTabButtonListener;

    .line 925
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addTabButtonColor:Landroid/content/res/ColorStateList;

    .line 926
    iput-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->showToolbars:Z

    .line 927
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarTitle:Ljava/lang/CharSequence;

    const-wide/16 v3, 0xc8

    .line 928
    iput-wide v3, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewFadeThreshold:J

    .line 930
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewFadeDuration:J

    .line 931
    iput-boolean v2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->clearSavedStatesWhenRemovingTabs:Z

    .line 932
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 933
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconListener:Landroid/view/View$OnClickListener;

    .line 934
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarMenuId:I

    .line 935
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarMenuItemListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 936
    new-instance p1, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {p1}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseListeners:Lde/mrapp/util/datastructure/ListenerList;

    .line 937
    new-instance p1, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {p1}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewListeners:Lde/mrapp/util/datastructure/ListenerList;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private indexOfOrThrowException(Lde/mrapp/android/tabswitcher/Tab;)I
    .locals 6

    .line 474
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result v0

    .line 475
    sget-object v1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    .line 476
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such tab: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v4, Ljava/util/NoSuchElementException;

    invoke-virtual {v1, v2, v3, p1, v4}, Lde/mrapp/util/Condition;->ensureNotEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    return v0
.end method

.method private notifyOnAddTabButtonColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 806
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 807
    invoke-interface {v1, p1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onAddTabButtonColorChanged(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnAllTabsAdded(I[Lde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 9

    .line 620
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 621
    invoke-interface/range {v2 .. v8}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onAllTabsAdded(I[Lde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnAllTabsRemoved([Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 2

    .line 668
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 669
    invoke-interface {v1, p1, p2}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onAllTabsRemoved([Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnDecoratorChanged(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V
    .locals 2

    .line 517
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 518
    invoke-interface {v1, p1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onDecoratorChanged(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnEmptyViewChanged(Landroid/view/View;J)V
    .locals 2

    .line 890
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 891
    invoke-interface {v1, p1, p2, p3}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onEmptyViewChanged(Landroid/view/View;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnLogLevelChanged(Lde/mrapp/android/util/logging/LogLevel;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 505
    invoke-interface {v1, p1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onLogLevelChanged(Lde/mrapp/android/util/logging/LogLevel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnPaddingChanged(IIII)V
    .locals 2

    .line 687
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 688
    invoke-interface {v1, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onPaddingChanged(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnSelectionChanged(IILde/mrapp/android/tabswitcher/Tab;Z)V
    .locals 2

    .line 557
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 558
    invoke-interface {v1, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onSelectionChanged(IILde/mrapp/android/tabswitcher/Tab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnSwitcherHidden()V
    .locals 2

    .line 535
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 536
    invoke-interface {v1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onSwitcherHidden()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnSwitcherShown()V
    .locals 2

    .line 526
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 527
    invoke-interface {v1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onSwitcherShown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTabAdded(ILde/mrapp/android/tabswitcher/Tab;IIZZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 11

    move-object v0, p0

    .line 590
    iget-object v1, v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 591
    invoke-interface/range {v3 .. v10}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onTabAdded(ILde/mrapp/android/tabswitcher/Tab;IIZZLde/mrapp/android/tabswitcher/Animation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTabBackgroundColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 727
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 728
    invoke-interface {v1, p1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onTabBackgroundColorChanged(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTabCloseButtonIconChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 766
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 767
    invoke-interface {v1, p1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onTabCloseButtonIconChanged(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTabContentBackgroundColorChanged(I)V
    .locals 2

    .line 740
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 741
    invoke-interface {v1, p1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onTabContentBackgroundColorChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTabIconChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 714
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 715
    invoke-interface {v1, p1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onTabIconChanged(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTabProgressBarColorChanged(I)V
    .locals 2

    .line 779
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 780
    invoke-interface {v1, p1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onTabProgressBarColorChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTabRemoved(ILde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 9

    .line 650
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 651
    invoke-interface/range {v2 .. v8}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onTabRemoved(ILde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTabTitleColorChanged(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 753
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 754
    invoke-interface {v1, p1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onTabTitleColorChanged(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnToolbarMenuInflated(ILandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 2

    .line 853
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 854
    invoke-interface {v1, p1, p2}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onToolbarMenuInflated(ILandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnToolbarNavigationIconChanged(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 872
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 873
    invoke-interface {v1, p1, p2}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onToolbarNavigationIconChanged(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnToolbarTitleChanged(Ljava/lang/CharSequence;)V
    .locals 2

    .line 834
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 835
    invoke-interface {v1, p1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onToolbarTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnToolbarVisibilityChanged(Z)V
    .locals 2

    .line 820
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/model/Model$Listener;

    .line 821
    invoke-interface {v1, p1}, Lde/mrapp/android/tabswitcher/model/Model$Listener;->onToolbarVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSwitcherShown(Z)Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->switcherShown:Z

    if-eq v0, p1, :cond_0

    .line 489
    iput-boolean p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->switcherShown:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final addAllTabs([Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    .line 1228
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addAllTabs([Lde/mrapp/android/tabswitcher/Tab;I)V

    return-void
.end method

.method public final addAllTabs([Lde/mrapp/android/tabswitcher/Tab;I)V
    .locals 1

    .line 1233
    new-instance v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {v0}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addAllTabs([Lde/mrapp/android/tabswitcher/Tab;ILde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public final addAllTabs([Lde/mrapp/android/tabswitcher/Tab;ILde/mrapp/android/tabswitcher/Animation;)V
    .locals 8

    .line 1239
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1240
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The animation may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1242
    array-length v0, p1

    if-lez v0, :cond_2

    .line 1243
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1247
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1248
    aget-object v2, p1, v1

    .line 1249
    iget-object v3, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    add-int v5, p2, v1

    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-ne v4, v1, :cond_1

    .line 1254
    aget-object v1, p1, v0

    iput-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    const/4 v6, 0x0

    :goto_1
    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v7, p3

    .line 1258
    invoke-direct/range {v1 .. v7}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnAllTabsAdded(I[Lde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V

    :cond_2
    return-void
.end method

.method public final addListener(Lde/mrapp/android/tabswitcher/model/Model$Listener;)V
    .locals 2

    .line 948
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addTab(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    .line 1167
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addTab(Lde/mrapp/android/tabswitcher/Tab;I)V

    return-void
.end method

.method public final addTab(Lde/mrapp/android/tabswitcher/Tab;I)V
    .locals 1

    .line 1172
    new-instance v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {v0}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addTab(Lde/mrapp/android/tabswitcher/Tab;ILde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public final addTab(Lde/mrapp/android/tabswitcher/Tab;ILde/mrapp/android/tabswitcher/Animation;)V
    .locals 9

    .line 1178
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The animation may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1181
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v4, v2, :cond_0

    .line 1187
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    move v2, p2

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    const/4 v3, 0x0

    .line 1192
    :goto_0
    instance-of v5, p3, Lde/mrapp/android/tabswitcher/RevealAnimation;

    if-eqz v5, :cond_1

    .line 1193
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    .line 1196
    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setSwitcherShown(Z)Z

    move-result v0

    move v5, p2

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    move v6, v3

    .line 1199
    :goto_1
    instance-of v2, p3, Lde/mrapp/android/tabswitcher/PeekAnimation;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 1200
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setSwitcherShown(Z)Z

    move-result v0

    :cond_2
    move v7, v0

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v8, p3

    .line 1203
    invoke-direct/range {v1 .. v8}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabAdded(ILde/mrapp/android/tabswitcher/Tab;IIZZLde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public final areSavedStatesClearedWhenRemovingTabs()Z
    .locals 1

    .line 1751
    iget-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->clearSavedStatesWhenRemovingTabs:Z

    return v0
.end method

.method public final areToolbarsShown()Z
    .locals 1

    .line 1616
    iget-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->showToolbars:Z

    return v0
.end method

.method public final clear()V
    .locals 1

    .line 1298
    new-instance v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {v0}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->clear(Lde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public final clear(Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 2

    .line 1303
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The animation may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lde/mrapp/android/tabswitcher/Tab;

    .line 1305
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1306
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1307
    invoke-direct {p0, v0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnAllTabsRemoved([Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    const/4 p1, 0x0

    .line 1308
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    return-void
.end method

.method public final getAddTabButtonColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1600
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addTabButtonColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getAddTabButtonListener()Lde/mrapp/android/tabswitcher/AddTabButtonListener;
    .locals 1

    .line 1021
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addTabButtonListener:Lde/mrapp/android/tabswitcher/AddTabButtonListener;

    return-object v0
.end method

.method public final getContentRecyclerAdapter()Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;
    .locals 4

    .line 1106
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->contentRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;

    const-class v2, Ljava/lang/IllegalStateException;

    const-string v3, "No decorator has been set"

    invoke-virtual {v0, v1, v3, v2}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1108
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->contentRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1114
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 1150
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getDecorator()Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;
    .locals 1

    .line 1127
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->decorator:Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    return-object v0
.end method

.method public final getEmptyView()Landroid/view/View;
    .locals 1

    .line 1723
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method public final getEmptyViewAnimationDuration()J
    .locals 2

    .line 1070
    iget-wide v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->emptyViewAnimationDuration:J

    return-wide v0
.end method

.method public final getLogLevel()Lde/mrapp/android/util/logging/LogLevel;
    .locals 1

    .line 1133
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->logLevel:Lde/mrapp/android/util/logging/LogLevel;

    return-object v0
.end method

.method public final getPaddingBottom()I
    .locals 2

    .line 1391
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->padding:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getPaddingEnd()I
    .locals 2

    .line 1406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 1407
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1408
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    .line 1411
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public final getPaddingLeft()I
    .locals 2

    .line 1376
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->padding:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getPaddingRight()I
    .locals 2

    .line 1386
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->padding:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getPaddingStart()I
    .locals 2

    .line 1396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 1397
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1398
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    .line 1401
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final getPaddingTop()I
    .locals 2

    .line 1381
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->padding:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getReferenceTabIndex()I
    .locals 1

    .line 972
    iget v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->referenceTabIndex:I

    return v0
.end method

.method public final getReferenceTabPosition()F
    .locals 1

    .line 996
    iget v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->referenceTabPosition:F

    return v0
.end method

.method public final getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;
    .locals 1

    .line 1340
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    return-object v0
.end method

.method public final getSelectedTabIndex()I
    .locals 1

    .line 1345
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getTab(I)Lde/mrapp/android/tabswitcher/Tab;
    .locals 1

    .line 1156
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/tabswitcher/Tab;

    return-object p1
.end method

.method public final getTabBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1480
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabBackgroundColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getTabCloseButtonIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1526
    iget v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1527
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconId:I

    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1529
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1530
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getTabCloseButtonIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1562
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getTabCloseButtonIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1577
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getTabCloseListeners()Lde/mrapp/util/datastructure/ListenerList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/tabswitcher/TabCloseListener;",
            ">;"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseListeners:Lde/mrapp/util/datastructure/ListenerList;

    return-object v0
.end method

.method public final getTabContentBackgroundColor()I
    .locals 1

    .line 1497
    iget v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabContentBackgroundColor:I

    return v0
.end method

.method public final getTabIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1428
    iget v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1429
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconId:I

    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1431
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1432
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getTabIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1452
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getTabIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1468
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getTabPreviewFadeDuration()J
    .locals 2

    .line 1711
    iget-wide v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewFadeDuration:J

    return-wide v0
.end method

.method public final getTabPreviewFadeThreshold()J
    .locals 2

    .line 1700
    iget-wide v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewFadeThreshold:J

    return-wide v0
.end method

.method public final getTabPreviewListeners()Lde/mrapp/util/datastructure/ListenerList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/tabswitcher/TabPreviewListener;",
            ">;"
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewListeners:Lde/mrapp/util/datastructure/ListenerList;

    return-object v0
.end method

.method public final getTabProgressBarColor()I
    .locals 1

    .line 1537
    iget v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabProgressBarColor:I

    return v0
.end method

.method public final getTabTitleTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1509
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabTitleTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getToolbarMenuId()I
    .locals 1

    .line 1046
    iget v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarMenuId:I

    return v0
.end method

.method public final getToolbarMenuItemListener()Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
    .locals 1

    .line 1059
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarMenuItemListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    return-object v0
.end method

.method public final getToolbarNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1645
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getToolbarNavigationIconListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1034
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getToolbarNavigationIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1665
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getToolbarNavigationIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1681
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1628
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final hideSwitcher()V
    .locals 1

    const/4 v0, 0x0

    .line 1324
    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setSwitcherShown(Z)Z

    .line 1325
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnSwitcherHidden()V

    return-void
.end method

.method public final indexOf(Lde/mrapp/android/tabswitcher/Tab;)I
    .locals 2

    .line 1161
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final inflateToolbarMenu(ILandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    .line 1693
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarMenuId:I

    .line 1694
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarMenuItemListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 1695
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnToolbarMenuInflated(ILandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method public final isAddTabButtonShown()Z
    .locals 2

    .line 1588
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/Layout;->TABLET:Lde/mrapp/android/tabswitcher/Layout;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addTabButtonListener:Lde/mrapp/android/tabswitcher/AddTabButtonListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1145
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isPaddingAppliedToTabs()Z
    .locals 1

    .line 1422
    iget-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->applyPaddingToTabs:Z

    return v0
.end method

.method public final isSwitcherShown()Z
    .locals 2

    .line 1313
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getLayout()Lde/mrapp/android/tabswitcher/Layout;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/Layout;->TABLET:Lde/mrapp/android/tabswitcher/Layout;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->switcherShown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            ">;"
        }
    .end annotation

    .line 1365
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final removeListener(Lde/mrapp/android/tabswitcher/model/Model$Listener;)V
    .locals 2

    .line 960
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTab(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    .line 1265
    new-instance v0, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;

    invoke-direct {v0}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;-><init>()V

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/SwipeAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/SwipeAnimation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->removeTab(Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public final removeTab(Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 9

    .line 1270
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1271
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The animation may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1272
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->indexOfOrThrowException(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result v3

    .line 1273
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v5

    .line 1276
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1278
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 1280
    iput-object v2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    const/4 v6, -0x1

    :goto_0
    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    if-ne v3, v5, :cond_2

    if-lez v3, :cond_1

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :cond_1
    move v0, v5

    .line 1287
    :goto_1
    invoke-virtual {p0, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTab(I)Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v2

    iput-object v2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    move v6, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v6, v5

    const/4 v7, 0x0

    :goto_2
    move-object v2, p0

    move-object v4, p1

    move-object v8, p2

    .line 1291
    invoke-direct/range {v2 .. v8}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabRemoved(ILde/mrapp/android/tabswitcher/Tab;IIZLde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public final restoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1819
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->REFERENCE_TAB_INDEX_EXTRA:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->referenceTabIndex:I

    .line 1820
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->REFERENCE_TAB_POSITION_EXTRA:Ljava/lang/String;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->referenceTabPosition:F

    .line 1821
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->LOG_LEVEL_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/util/logging/LogLevel;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->logLevel:Lde/mrapp/android/util/logging/LogLevel;

    .line 1822
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TABS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    .line 1823
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->SWITCHER_SHOWN_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->switcherShown:Z

    .line 1824
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->SELECTED_TAB_INDEX_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1825
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/Tab;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    .line 1826
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->PADDING_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->padding:[I

    .line 1827
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->APPLY_PADDING_TO_TABS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->applyPaddingToTabs:Z

    .line 1828
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconId:I

    .line 1829
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconBitmap:Landroid/graphics/Bitmap;

    .line 1830
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconTintList:Landroid/content/res/ColorStateList;

    .line 1831
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    .line 1832
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1833
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabBackgroundColor:Landroid/content/res/ColorStateList;

    .line 1834
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CONTENT_BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

    .line 1835
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabContentBackgroundColor:I

    .line 1836
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_TITLE_TEXT_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabTitleTextColor:Landroid/content/res/ColorStateList;

    .line 1837
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconId:I

    .line 1838
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_BITMAP_EXTRA:Ljava/lang/String;

    .line 1839
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconBitmap:Landroid/graphics/Bitmap;

    .line 1840
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    .line 1841
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconTintList:Landroid/content/res/ColorStateList;

    .line 1842
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    .line 1843
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1844
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_PROGRESS_BAR_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabProgressBarColor:I

    .line 1845
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->SHOW_TOOLBARS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->showToolbars:Z

    .line 1846
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TOOLBAR_TITLE_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarTitle:Ljava/lang/CharSequence;

    .line 1847
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TOOLBAR_NAVIGATION_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    .line 1848
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconTintList:Landroid/content/res/ColorStateList;

    .line 1849
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TOOLBAR_NAVIGATION_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    .line 1850
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1851
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_PREVIEW_FADE_THRESHOLD_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewFadeThreshold:J

    .line 1852
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_PREVIEW_FADE_DURATION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewFadeDuration:J

    .line 1853
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->CLEAR_SAVED_STATES_WHEN_REMOVING_TABS_EXTRA:Ljava/lang/String;

    .line 1854
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->clearSavedStatesWhenRemovingTabs:Z

    .line 1855
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContentRecyclerAdapter()Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final saveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1785
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->LOG_LEVEL_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->logLevel:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1786
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TABS_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1787
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->SWITCHER_SHOWN_EXTRA:Ljava/lang/String;

    iget-boolean v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->switcherShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1788
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->SELECTED_TAB_INDEX_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1789
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->PADDING_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->padding:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1790
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->APPLY_PADDING_TO_TABS_EXTRA:Ljava/lang/String;

    iget-boolean v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->applyPaddingToTabs:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1791
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_ID_EXTRA:Ljava/lang/String;

    iget v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1792
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_BITMAP_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1793
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1794
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1795
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1796
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CONTENT_BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

    iget v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabContentBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1797
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_TITLE_TEXT_COLOR_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1798
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_ID_EXTRA:Ljava/lang/String;

    iget v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1799
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_BITMAP_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1800
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1801
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_CLOSE_BUTTON_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1802
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_PROGRESS_BAR_COLOR_EXTRA:Ljava/lang/String;

    iget v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabProgressBarColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1803
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->SHOW_TOOLBARS_EXTRA:Ljava/lang/String;

    iget-boolean v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->showToolbars:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1804
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TOOLBAR_TITLE_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1805
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TOOLBAR_NAVIGATION_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1807
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TOOLBAR_NAVIGATION_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1809
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_PREVIEW_FADE_THRESHOLD_EXTRA:Ljava/lang/String;

    iget-wide v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewFadeThreshold:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1810
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->TAB_PREVIEW_FADE_DURATION:Ljava/lang/String;

    iget-wide v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewFadeDuration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1811
    sget-object v0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->CLEAR_SAVED_STATES_WHEN_REMOVING_TABS_EXTRA:Ljava/lang/String;

    iget-boolean v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->clearSavedStatesWhenRemovingTabs:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1813
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContentRecyclerAdapter()Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final selectTab(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 3

    .line 1350
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getSelectedTabIndex()I

    move-result v0

    .line 1352
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->indexOfOrThrowException(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result v1

    .line 1353
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->selectedTab:Lde/mrapp/android/tabswitcher/Tab;

    const/4 v2, 0x0

    .line 1354
    invoke-direct {p0, v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setSwitcherShown(Z)Z

    move-result v2

    .line 1355
    invoke-direct {p0, v0, v1, p1, v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnSelectionChanged(IILde/mrapp/android/tabswitcher/Tab;Z)V

    return-void
.end method

.method public final setAddTabButtonColor(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1605
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setAddTabButtonColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setAddTabButtonColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1610
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->addTabButtonColor:Landroid/content/res/ColorStateList;

    .line 1611
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnAddTabButtonColorChanged(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setDecorator(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V
    .locals 2

    .line 1119
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The decorator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1120
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->decorator:Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;

    .line 1121
    new-instance v0, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    invoke-direct {v0, v1, p1}, Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;-><init>(Lde/mrapp/android/tabswitcher/TabSwitcher;Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->contentRecyclerAdapter:Lde/mrapp/android/tabswitcher/layout/ContentRecyclerAdapter;

    .line 1122
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnDecoratorChanged(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V

    return-void
.end method

.method public final setEmptyView(I)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1740
    invoke-virtual {p0, p1, v0, v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setEmptyView(IJ)V

    return-void
.end method

.method public final setEmptyView(IJ)V
    .locals 3

    .line 1745
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1746
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setEmptyView(Landroid/view/View;J)V

    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1728
    invoke-virtual {p0, p1, v0, v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setEmptyView(Landroid/view/View;J)V

    return-void
.end method

.method public final setEmptyView(Landroid/view/View;J)V
    .locals 2

    .line 1733
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 1734
    :goto_0
    iput-wide v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->emptyViewAnimationDuration:J

    .line 1735
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->emptyView:Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnEmptyViewChanged(Landroid/view/View;J)V

    return-void
.end method

.method public final setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V
    .locals 2

    .line 1138
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The log level may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->logLevel:Lde/mrapp/android/util/logging/LogLevel;

    .line 1140
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnLogLevelChanged(Lde/mrapp/android/util/logging/LogLevel;)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 1370
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->padding:[I

    .line 1371
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnPaddingChanged(IIII)V

    return-void
.end method

.method public final setReferenceTabIndex(I)V
    .locals 0

    .line 984
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->referenceTabIndex:I

    return-void
.end method

.method public final setReferenceTabPosition(F)V
    .locals 0

    .line 1008
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->referenceTabPosition:F

    return-void
.end method

.method public final setTabBackgroundColor(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1485
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setTabBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTabBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1490
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabBackgroundColor:Landroid/content/res/ColorStateList;

    .line 1491
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabBackgroundColorChanged(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTabCloseButtonIcon(I)V
    .locals 0

    .line 1548
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconId:I

    const/4 p1, 0x0

    .line 1549
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconBitmap:Landroid/graphics/Bitmap;

    .line 1550
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabCloseButtonIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabCloseButtonIconChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTabCloseButtonIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, -0x1

    .line 1555
    iput v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconId:I

    .line 1556
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconBitmap:Landroid/graphics/Bitmap;

    .line 1557
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabCloseButtonIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabCloseButtonIconChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTabCloseButtonIconTint(I)V
    .locals 0

    .line 1567
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setTabCloseButtonIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTabCloseButtonIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1572
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconTintList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public final setTabCloseButtonIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1582
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabCloseButtonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1583
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabIconChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTabContentBackgroundColor(I)V
    .locals 0

    .line 1502
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabContentBackgroundColor:I

    .line 1503
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabContentBackgroundColorChanged(I)V

    return-void
.end method

.method public final setTabIcon(I)V
    .locals 0

    .line 1438
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconId:I

    const/4 p1, 0x0

    .line 1439
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconBitmap:Landroid/graphics/Bitmap;

    .line 1440
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabIconChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTabIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, -0x1

    .line 1445
    iput v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconId:I

    .line 1446
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconBitmap:Landroid/graphics/Bitmap;

    .line 1447
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabIconChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTabIconTint(I)V
    .locals 0

    .line 1457
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setTabIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTabIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1462
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconTintList:Landroid/content/res/ColorStateList;

    .line 1463
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabIconChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTabIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1473
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1474
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabIconChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTabPreviewFadeDuration(J)V
    .locals 6

    .line 1716
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-wide/16 v3, 0x0

    const-string v5, "The duration must be at least 0"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lde/mrapp/util/Condition;->ensureAtLeast(JJLjava/lang/String;)V

    .line 1717
    iput-wide p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewFadeDuration:J

    return-void
.end method

.method public final setTabPreviewFadeThreshold(J)V
    .locals 6

    .line 1705
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-wide/16 v3, 0x0

    const-string v5, "The threshold must be at least 0"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lde/mrapp/util/Condition;->ensureAtLeast(JJLjava/lang/String;)V

    .line 1706
    iput-wide p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabPreviewFadeThreshold:J

    return-void
.end method

.method public final setTabProgressBarColor(I)V
    .locals 0

    .line 1542
    iput p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabProgressBarColor:I

    .line 1543
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabProgressBarColorChanged(I)V

    return-void
.end method

.method public final setTabTitleTextColor(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1514
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setTabTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTabTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1519
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->tabTitleTextColor:Landroid/content/res/ColorStateList;

    .line 1520
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnTabTitleColorChanged(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setToolbarNavigationIcon(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1658
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 1659
    iput-object p2, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconListener:Landroid/view/View$OnClickListener;

    .line 1660
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnToolbarNavigationIconChanged(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setToolbarNavigationIconTint(I)V
    .locals 0

    .line 1670
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setToolbarNavigationIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setToolbarNavigationIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1675
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconTintList:Landroid/content/res/ColorStateList;

    .line 1676
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnToolbarNavigationIconChanged(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setToolbarNavigationIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1686
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1687
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarNavigationIconListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnToolbarNavigationIconChanged(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setToolbarTitle(I)V
    .locals 1

    .line 1633
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setToolbarTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setToolbarTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1638
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->toolbarTitle:Ljava/lang/CharSequence;

    .line 1639
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnToolbarTitleChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showSwitcher()V
    .locals 1

    const/4 v0, 0x1

    .line 1318
    invoke-direct {p0, v0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->setSwitcherShown(Z)Z

    .line 1319
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnSwitcherShown()V

    return-void
.end method

.method public final showToolbars(Z)V
    .locals 0

    .line 1621
    iput-boolean p1, p0, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->showToolbars:Z

    .line 1622
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->notifyOnToolbarVisibilityChanged(Z)V

    return-void
.end method
