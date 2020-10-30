.class public Lorg/wikipedia/page/ToCHandler;
.super Ljava/lang/Object;
.source "ToCHandler.java"

# interfaces
.implements Lorg/wikipedia/views/ObservableWebView$OnClickListener;
.implements Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;
.implements Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/ToCHandler$ScrollerCallback;,
        Lorg/wikipedia/page/ToCHandler$ToCAdapter;
    }
.end annotation


# static fields
.field private static final ABOUT_SECTION_ID:I = -0x1

.field private static final MAX_LEVELS:I = 0x3

.field private static final SCROLLER_BUTTON_REVEAL_MARGIN:F = 12.0f

.field private static final SCROLLER_BUTTON_SIZE:F = 44.0f

.field private static final TOC_LEAD_TEXT_SIZE:F = 24.0f

.field private static final TOC_SECTION_TEXT_SIZE:F = 18.0f

.field private static final TOC_SECTION_TOP_OFFSET_ADJUST:F = 70.0f

.field private static final TOC_SUBSECTION_TEXT_SIZE:F = 14.0f


# instance fields
.field private adapter:Lorg/wikipedia/page/ToCHandler$ToCAdapter;

.field private final bridge:Lorg/wikipedia/bridge/CommunicationBridge;

.field private final containerView:Landroid/view/View;

.field private currentItemSelected:I

.field private final drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

.field private final fragment:Lorg/wikipedia/page/PageFragment;

.field private funnel:Lorg/wikipedia/analytics/ToCInteractionFunnel;

.field private rtl:Z

.field private final scrollerView:Lorg/wikipedia/views/PageScrollerView;

.field private final scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

.field private sectionOffsetsCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tocList:Lorg/wikipedia/views/SwipeableListView;

.field private final webView:Lorg/wikipedia/views/ObservableWebView;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageFragment;Landroidx/drawerlayout/widget/FixedDrawerLayout;Lorg/wikipedia/views/PageScrollerView;Lorg/wikipedia/bridge/CommunicationBridge;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    invoke-direct {v0, p0}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;-><init>(Lorg/wikipedia/page/ToCHandler;)V

    iput-object v0, p0, Lorg/wikipedia/page/ToCHandler;->adapter:Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    .line 72
    new-instance v0, Lorg/wikipedia/page/ToCHandler$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/page/ToCHandler$1;-><init>(Lorg/wikipedia/page/ToCHandler;)V

    iput-object v0, p0, Lorg/wikipedia/page/ToCHandler;->sectionOffsetsCallback:Landroid/webkit/ValueCallback;

    .line 94
    iput-object p1, p0, Lorg/wikipedia/page/ToCHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 95
    iput-object p4, p0, Lorg/wikipedia/page/ToCHandler;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 96
    iput-object p2, p0, Lorg/wikipedia/page/ToCHandler;->drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 97
    iput-object p3, p0, Lorg/wikipedia/page/ToCHandler;->scrollerView:Lorg/wikipedia/views/PageScrollerView;

    .line 98
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v0

    invoke-direct {p4, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p4, p0, Lorg/wikipedia/page/ToCHandler;->scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

    const p4, 0x7f09040f

    .line 100
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lorg/wikipedia/page/ToCHandler;->containerView:Landroid/view/View;

    const p4, 0x7f090410

    .line 101
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/views/SwipeableListView;

    iput-object p2, p0, Lorg/wikipedia/page/ToCHandler;->tocList:Lorg/wikipedia/views/SwipeableListView;

    .line 102
    iget-object p4, p0, Lorg/wikipedia/page/ToCHandler;->adapter:Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    invoke-virtual {p2, p4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object p2, p0, Lorg/wikipedia/page/ToCHandler;->tocList:Lorg/wikipedia/views/SwipeableListView;

    new-instance p4, Lorg/wikipedia/page/-$$Lambda$ToCHandler$CKbOcVWJdOGdM4kHkHLozRZKEiw;

    invoke-direct {p4, p0}, Lorg/wikipedia/page/-$$Lambda$ToCHandler$CKbOcVWJdOGdM4kHkHLozRZKEiw;-><init>(Lorg/wikipedia/page/ToCHandler;)V

    invoke-virtual {p2, p4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object p2, p0, Lorg/wikipedia/page/ToCHandler;->tocList:Lorg/wikipedia/views/SwipeableListView;

    new-instance p4, Lorg/wikipedia/page/-$$Lambda$dplUSQ2_p1YATOWoC0ObaR3v8R8;

    invoke-direct {p4, p0}, Lorg/wikipedia/page/-$$Lambda$dplUSQ2_p1YATOWoC0ObaR3v8R8;-><init>(Lorg/wikipedia/page/ToCHandler;)V

    invoke-virtual {p2, p4}, Lorg/wikipedia/views/SwipeableListView;->setListener(Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;)V

    .line 111
    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 112
    invoke-virtual {p1, p0}, Lorg/wikipedia/views/ObservableWebView;->addOnClickListener(Lorg/wikipedia/views/ObservableWebView$OnClickListener;)V

    .line 113
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {p1, p0}, Lorg/wikipedia/views/ObservableWebView;->addOnScrollChangeListener(Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;)V

    .line 114
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {p1, p0}, Lorg/wikipedia/views/ObservableWebView;->addOnContentHeightChangedListener(Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;)V

    .line 116
    new-instance p1, Lorg/wikipedia/page/ToCHandler$ScrollerCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/wikipedia/page/ToCHandler$ScrollerCallback;-><init>(Lorg/wikipedia/page/ToCHandler;Lorg/wikipedia/page/ToCHandler$1;)V

    invoke-virtual {p3, p1}, Lorg/wikipedia/views/PageScrollerView;->setCallback(Lorg/wikipedia/views/PageScrollerView$Callback;)V

    .line 117
    invoke-direct {p0}, Lorg/wikipedia/page/ToCHandler;->setScrollerPosition()V

    .line 120
    new-instance p1, Lorg/wikipedia/analytics/ToCInteractionFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    .line 121
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p3

    invoke-virtual {p3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4, p4}, Lorg/wikipedia/analytics/ToCInteractionFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;II)V

    iput-object p1, p0, Lorg/wikipedia/page/ToCHandler;->funnel:Lorg/wikipedia/analytics/ToCInteractionFunnel;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/page/ToCHandler;)Lorg/wikipedia/page/PageFragment;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/wikipedia/page/ToCHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/page/ToCHandler;)Lorg/wikipedia/page/ToCHandler$ToCAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/wikipedia/page/ToCHandler;->adapter:Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/page/ToCHandler;)Lorg/wikipedia/views/ObservableWebView;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/wikipedia/page/ToCHandler;FZ)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/page/ToCHandler;->onScrollerMoved(FZ)V

    return-void
.end method

.method private onScrollerMoved(FZ)V
    .locals 4

    .line 333
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    .line 334
    iget-object v1, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    .line 335
    iget-object v2, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v3

    mul-float v2, v2, v3

    int-to-float v0, v0

    mul-float p1, p1, v2

    .line 337
    iget-object v3, p0, Lorg/wikipedia/page/ToCHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/util/DimenUtil;->getToolbarHeightPx(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    add-float/2addr v0, p1

    const/4 p1, 0x0

    cmpg-float v3, v0, p1

    if-gez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    int-to-float p1, v1

    sub-float/2addr v2, p1

    cmpl-float p1, v0, v2

    if-lez p1, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 345
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    const/4 p2, 0x0

    float-to-int v2, v0

    invoke-virtual {p1, p2, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    :cond_2
    float-to-int p1, v0

    .line 347
    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/wikipedia/page/ToCHandler;->scrollToListSectionByOffset(I)V

    return-void
.end method

.method private scrollToListSectionByOffset(I)V
    .locals 6

    int-to-float p1, p1

    .line 314
    invoke-static {p1}, Lorg/wikipedia/util/DimenUtil;->roundedPxToDp(F)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 316
    :goto_0
    iget-object v3, p0, Lorg/wikipedia/page/ToCHandler;->adapter:Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    invoke-virtual {v3}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 317
    iget-object v3, p0, Lorg/wikipedia/page/ToCHandler;->adapter:Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    invoke-virtual {v3, v0}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->getItem(I)Lorg/wikipedia/page/Section;

    move-result-object v3

    .line 318
    iget-object v4, p0, Lorg/wikipedia/page/ToCHandler;->adapter:Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    invoke-virtual {v3}, Lorg/wikipedia/page/Section;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->getYOffset(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_0

    .line 324
    :cond_0
    iget p1, p0, Lorg/wikipedia/page/ToCHandler;->currentItemSelected:I

    if-eq v2, p1, :cond_1

    .line 325
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->adapter:Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    invoke-virtual {p1, v2}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->setHighlightedSection(I)V

    .line 326
    iput v2, p0, Lorg/wikipedia/page/ToCHandler;->currentItemSelected:I

    .line 328
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->tocList:Lorg/wikipedia/views/SwipeableListView;

    iget v0, p0, Lorg/wikipedia/page/ToCHandler;->currentItemSelected:I

    iget-object v2, p0, Lorg/wikipedia/page/ToCHandler;->scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v3, 0x428c0000    # 70.0f

    .line 329
    invoke-static {v3}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 328
    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method

.method private scrollToSection(Lorg/wikipedia/page/Section;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/page/Section;->isLead()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 154
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setScrollY(I)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Lorg/wikipedia/page/Section;->getId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 156
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->scrollToFooter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-virtual {p1}, Lorg/wikipedia/page/Section;->getAnchor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->prepareToScrollTo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setScrollerPosition()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v1, p0, Lorg/wikipedia/page/ToCHandler;->rtl:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 302
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v1, p0, Lorg/wikipedia/page/ToCHandler;->rtl:Z

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {v2}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 303
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v1, p0, Lorg/wikipedia/page/ToCHandler;->rtl:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v3

    :goto_2
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 304
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->getToolbarHeightPx(Landroid/content/Context;)I

    move-result v0

    .line 305
    iget-object v1, p0, Lorg/wikipedia/page/ToCHandler;->scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v2, v0

    iget-object v3, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 306
    invoke-virtual {v3}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/wikipedia/page/ToCHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 307
    iget-object v1, p0, Lorg/wikipedia/page/ToCHandler;->scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ge v2, v0, :cond_3

    .line 308
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 310
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->scrollerView:Lorg/wikipedia/views/PageScrollerView;

    iget-object v1, p0, Lorg/wikipedia/page/ToCHandler;->scrollerViewParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 171
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->funnel:Lorg/wikipedia/analytics/ToCInteractionFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/ToCInteractionFunnel;->scrollStop()V

    return-void
.end method

.method public isVisible()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

    iget-object v1, p0, Lorg/wikipedia/page/ToCHandler;->containerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$ToCHandler(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 104
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->adapter:Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    invoke-virtual {p1, p3}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->getItem(I)Lorg/wikipedia/page/Section;

    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Lorg/wikipedia/page/ToCHandler;->scrollToSection(Lorg/wikipedia/page/Section;)V

    .line 106
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->funnel:Lorg/wikipedia/analytics/ToCInteractionFunnel;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/ToCInteractionFunnel;->logClick()V

    .line 107
    invoke-virtual {p0}, Lorg/wikipedia/page/ToCHandler;->hide()V

    return-void
.end method

.method log()V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->funnel:Lorg/wikipedia/analytics/ToCInteractionFunnel;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lorg/wikipedia/analytics/ToCInteractionFunnel;->log()V

    :cond_0
    return-void
.end method

.method public onClick(FF)Z
    .locals 0

    .line 190
    invoke-virtual {p0}, Lorg/wikipedia/page/ToCHandler;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/wikipedia/page/ToCHandler;->hide()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onContentHeightChanged(I)V
    .locals 2

    .line 203
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    invoke-static {}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->getOffsets()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/ToCHandler;->sectionOffsetsCallback:Landroid/webkit/ValueCallback;

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onScrollChanged(IIZ)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lorg/wikipedia/page/ToCHandler;->setScrollerPosition()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 180
    invoke-direct {p0}, Lorg/wikipedia/page/ToCHandler;->setScrollerPosition()V

    .line 181
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/FixedDrawerLayout;->setSlidingEnabled(Z)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 184
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler;->drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/FixedDrawerLayout;->setSlidingEnabled(Z)V

    :goto_0
    return-void
.end method

.method setupToC(Lorg/wikipedia/page/Page;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->adapter:Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->setPage(Lorg/wikipedia/page/Page;)V

    .line 130
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/L10nUtil;->isLangRTL(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/wikipedia/page/ToCHandler;->rtl:Z

    .line 131
    iget-object v1, p0, Lorg/wikipedia/page/ToCHandler;->tocList:Lorg/wikipedia/views/SwipeableListView;

    invoke-virtual {v1, v0}, Lorg/wikipedia/views/SwipeableListView;->setRtl(Z)V

    .line 133
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->containerView:Landroid/view/View;

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 135
    iget-boolean v1, p0, Lorg/wikipedia/page/ToCHandler;->rtl:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 136
    iget-object v1, p0, Lorg/wikipedia/page/ToCHandler;->containerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {p0}, Lorg/wikipedia/page/ToCHandler;->log()V

    .line 139
    new-instance v0, Lorg/wikipedia/analytics/ToCInteractionFunnel;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageProperties;->getPageId()I

    move-result p1

    iget-object v2, p0, Lorg/wikipedia/page/ToCHandler;->adapter:Lorg/wikipedia/page/ToCHandler$ToCAdapter;

    invoke-virtual {v2}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->getCount()I

    move-result v2

    invoke-direct {v0, v1, p2, p1, v2}, Lorg/wikipedia/analytics/ToCInteractionFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;II)V

    iput-object v0, p0, Lorg/wikipedia/page/ToCHandler;->funnel:Lorg/wikipedia/analytics/ToCInteractionFunnel;

    return-void
.end method

.method public show()V
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

    iget-object v1, p0, Lorg/wikipedia/page/ToCHandler;->containerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 164
    iput v0, p0, Lorg/wikipedia/page/ToCHandler;->currentItemSelected:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/page/ToCHandler;->onScrollerMoved(FZ)V

    .line 166
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler;->funnel:Lorg/wikipedia/analytics/ToCInteractionFunnel;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/ToCInteractionFunnel;->scrollStart()V

    return-void
.end method
