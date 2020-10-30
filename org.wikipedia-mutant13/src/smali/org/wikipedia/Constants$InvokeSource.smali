.class public final enum Lorg/wikipedia/Constants$InvokeSource;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InvokeSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/Constants$InvokeSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum APP_SHORTCUTS:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum CONTEXT_MENU:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum FEED:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum FEED_BAR:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum FILE_PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum GALLERY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum INTENT_PROCESS_TEXT:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum INTENT_SHARE:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum LEAD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum MAIN_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum MOST_READ_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum NAV_MENU:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum NEWS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum NOTIFICATION:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum ONBOARDING_DIALOG:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum ON_THIS_DAY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum ON_THIS_DAY_CARD_BODY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum ON_THIS_DAY_CARD_FOOTER:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum PAGE_ACTION_TAB:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum PAGE_OVERFLOW_MENU:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum RANDOM_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum READ_MORE_BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum SNACKBAR_ACTION:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum TABS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum TALK_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum TOOLBAR:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum VOICE:Lorg/wikipedia/Constants$InvokeSource;

.field public static final enum WIDGET:Lorg/wikipedia/Constants$InvokeSource;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 64
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "CONTEXT_MENU"

    const/4 v2, 0x0

    const-string v3, "contextMenu"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->CONTEXT_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 65
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "LINK_PREVIEW_MENU"

    const/4 v3, 0x1

    const-string v4, "linkPreviewMenu"

    invoke-direct {v0, v1, v3, v4}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 66
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "PAGE_OVERFLOW_MENU"

    const/4 v4, 0x2

    const-string v5, "pageOverflowMenu"

    invoke-direct {v0, v1, v4, v5}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->PAGE_OVERFLOW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 67
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "NAV_MENU"

    const/4 v5, 0x3

    const-string v6, "navMenu"

    invoke-direct {v0, v1, v5, v6}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->NAV_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 68
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "MAIN_ACTIVITY"

    const/4 v6, 0x4

    const-string v7, "main"

    invoke-direct {v0, v1, v6, v7}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->MAIN_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 69
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "PAGE_ACTIVITY"

    const/4 v7, 0x5

    const-string v8, "page"

    invoke-direct {v0, v1, v7, v8}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 70
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "NEWS_ACTIVITY"

    const/4 v8, 0x6

    const-string v9, "news"

    invoke-direct {v0, v1, v8, v9}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->NEWS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 71
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "READING_LIST_ACTIVITY"

    const/4 v9, 0x7

    const-string v10, "readingList"

    invoke-direct {v0, v1, v9, v10}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 72
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "MOST_READ_ACTIVITY"

    const/16 v10, 0x8

    const-string v11, "mostRead"

    invoke-direct {v0, v1, v10, v11}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->MOST_READ_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 73
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "RANDOM_ACTIVITY"

    const/16 v11, 0x9

    const-string v12, "random"

    invoke-direct {v0, v1, v11, v12}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->RANDOM_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 74
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "ON_THIS_DAY_ACTIVITY"

    const/16 v12, 0xa

    const-string v13, "onThisDay"

    invoke-direct {v0, v1, v12, v13}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 75
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "GALLERY_ACTIVITY"

    const/16 v13, 0xb

    const-string v14, "gallery"

    invoke-direct {v0, v1, v13, v14}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->GALLERY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 76
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "READ_MORE_BOOKMARK_BUTTON"

    const/16 v14, 0xc

    const-string v15, "readMoreBookmark"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->READ_MORE_BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

    .line 77
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "BOOKMARK_BUTTON"

    const/16 v15, 0xd

    const-string v14, "bookmark"

    invoke-direct {v0, v1, v15, v14}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

    .line 78
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "SUGGESTED_EDITS"

    const/16 v14, 0xe

    const-string v15, "suggestedEdits"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 79
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "ONBOARDING_DIALOG"

    const/16 v15, 0xf

    const-string v14, "onboarding"

    invoke-direct {v0, v1, v15, v14}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->ONBOARDING_DIALOG:Lorg/wikipedia/Constants$InvokeSource;

    .line 80
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "FEED"

    const/16 v14, 0x10

    const-string v15, "feed"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    .line 81
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "NOTIFICATION"

    const/16 v15, 0x11

    const-string v14, "notification"

    invoke-direct {v0, v1, v15, v14}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->NOTIFICATION:Lorg/wikipedia/Constants$InvokeSource;

    .line 82
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "APP_SHORTCUTS"

    const/16 v14, 0x12

    const-string v15, "appShortcuts"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->APP_SHORTCUTS:Lorg/wikipedia/Constants$InvokeSource;

    .line 83
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "TOOLBAR"

    const/16 v15, 0x13

    const-string v14, "toolbar"

    invoke-direct {v0, v1, v15, v14}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->TOOLBAR:Lorg/wikipedia/Constants$InvokeSource;

    .line 84
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "WIDGET"

    const/16 v14, 0x14

    const-string v15, "widget"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->WIDGET:Lorg/wikipedia/Constants$InvokeSource;

    .line 85
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "INTENT_SHARE"

    const/16 v15, 0x15

    const-string v14, "intentShare"

    invoke-direct {v0, v1, v15, v14}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->INTENT_SHARE:Lorg/wikipedia/Constants$InvokeSource;

    .line 86
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "INTENT_PROCESS_TEXT"

    const/16 v14, 0x16

    const-string v15, "intentProcessText"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->INTENT_PROCESS_TEXT:Lorg/wikipedia/Constants$InvokeSource;

    .line 87
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "FEED_BAR"

    const/16 v14, 0x17

    const-string v15, "feedBar"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->FEED_BAR:Lorg/wikipedia/Constants$InvokeSource;

    .line 88
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "VOICE"

    const/16 v14, 0x18

    const-string v15, "voice"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->VOICE:Lorg/wikipedia/Constants$InvokeSource;

    .line 89
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "ON_THIS_DAY_CARD_BODY"

    const/16 v14, 0x19

    const-string v15, "onThisDayCard"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_CARD_BODY:Lorg/wikipedia/Constants$InvokeSource;

    .line 90
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "ON_THIS_DAY_CARD_FOOTER"

    const/16 v14, 0x1a

    const-string v15, "onThisDayCardFooter"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_CARD_FOOTER:Lorg/wikipedia/Constants$InvokeSource;

    .line 91
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "LEAD_IMAGE"

    const/16 v14, 0x1b

    const-string v15, "leadImage"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->LEAD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 92
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "TABS_ACTIVITY"

    const/16 v14, 0x1c

    const-string v15, "tabsActivity"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->TABS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 93
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "FILE_PAGE_ACTIVITY"

    const/16 v14, 0x1d

    const-string v15, "filePage"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->FILE_PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 94
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "SNACKBAR_ACTION"

    const/16 v14, 0x1e

    const-string v15, "snackbar"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->SNACKBAR_ACTION:Lorg/wikipedia/Constants$InvokeSource;

    .line 95
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "PAGE_ACTION_TAB"

    const/16 v14, 0x1f

    const-string v15, "pageActionTab"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTION_TAB:Lorg/wikipedia/Constants$InvokeSource;

    .line 96
    new-instance v0, Lorg/wikipedia/Constants$InvokeSource;

    const-string v1, "TALK_ACTIVITY"

    const/16 v14, 0x20

    const-string v15, "talkActivity"

    invoke-direct {v0, v1, v14, v15}, Lorg/wikipedia/Constants$InvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/Constants$InvokeSource;->TALK_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v1, 0x21

    new-array v1, v1, [Lorg/wikipedia/Constants$InvokeSource;

    .line 63
    sget-object v14, Lorg/wikipedia/Constants$InvokeSource;->CONTEXT_MENU:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v14, v1, v2

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->PAGE_OVERFLOW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v2, v1, v4

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->NAV_MENU:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v2, v1, v5

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->MAIN_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v2, v1, v6

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v2, v1, v7

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->NEWS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v2, v1, v8

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v2, v1, v9

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->MOST_READ_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v2, v1, v10

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->RANDOM_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v2, v1, v11

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v2, v1, v12

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->GALLERY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    aput-object v2, v1, v13

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->READ_MORE_BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->BOOKMARK_BUTTON:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->ONBOARDING_DIALOG:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->NOTIFICATION:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->APP_SHORTCUTS:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->TOOLBAR:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->WIDGET:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->INTENT_SHARE:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->INTENT_PROCESS_TEXT:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->FEED_BAR:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->VOICE:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_CARD_BODY:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_CARD_FOOTER:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->LEAD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->TABS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->FILE_PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->SNACKBAR_ACTION:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTION_TAB:Lorg/wikipedia/Constants$InvokeSource;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const/16 v2, 0x20

    aput-object v0, v1, v2

    sput-object v1, Lorg/wikipedia/Constants$InvokeSource;->$VALUES:[Lorg/wikipedia/Constants$InvokeSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lorg/wikipedia/Constants$InvokeSource;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/Constants$InvokeSource;
    .locals 1

    .line 63
    const-class v0, Lorg/wikipedia/Constants$InvokeSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/Constants$InvokeSource;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/Constants$InvokeSource;
    .locals 1

    .line 63
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->$VALUES:[Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0}, [Lorg/wikipedia/Constants$InvokeSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/Constants$InvokeSource;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/wikipedia/Constants$InvokeSource;->name:Ljava/lang/String;

    return-object v0
.end method
