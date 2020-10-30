.class public Lorg/wikipedia/views/ObservableWebView;
.super Landroid/webkit/WebView;
.source "ObservableWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/ObservableWebView$OnFastScrollListener;,
        Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;,
        Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;,
        Lorg/wikipedia/views/ObservableWebView$OnDownMotionEventListener;,
        Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;,
        Lorg/wikipedia/views/ObservableWebView$OnClickListener;
    }
.end annotation


# static fields
.field private static final FAST_SCROLL_THRESHOLD:I

.field private static final INVALIDATE_EVENT:Lorg/wikipedia/events/WebViewInvalidateEvent;

.field private static final MAX_HUMAN_SCROLL:I

.field private static final MAX_MILLIS_BETWEEN_SCROLLS:I = 0x1f4

.field private static final SWIPE_DRAW_TOLERANCE:I = 0x4


# instance fields
.field private contentHeight:I

.field private drawEventsWhileSwiping:I

.field private lastScrollTime:J

.field private lastTouchX:F

.field private lastTouchY:F

.field private onClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/views/ObservableWebView$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private onContentHeightChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private onDownMotionEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/views/ObservableWebView$OnDownMotionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private onFastScrollListener:Lorg/wikipedia/views/ObservableWebView$OnFastScrollListener;

.field private onScrollChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private onUpOrCancelMotionEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private totalAmountScrolled:I

.field private touchSlop:I

.field private touchStartX:F

.field private touchStartY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lorg/wikipedia/events/WebViewInvalidateEvent;

    invoke-direct {v0}, Lorg/wikipedia/events/WebViewInvalidateEvent;-><init>()V

    sput-object v0, Lorg/wikipedia/views/ObservableWebView;->INVALIDATE_EVENT:Lorg/wikipedia/events/WebViewInvalidateEvent;

    .line 42
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lorg/wikipedia/views/ObservableWebView;->FAST_SCROLL_THRESHOLD:I

    .line 48
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lorg/wikipedia/views/ObservableWebView;->MAX_HUMAN_SCROLL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lorg/wikipedia/views/ObservableWebView;->contentHeight:I

    .line 115
    invoke-direct {p0}, Lorg/wikipedia/views/ObservableWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lorg/wikipedia/views/ObservableWebView;->contentHeight:I

    .line 120
    invoke-direct {p0}, Lorg/wikipedia/views/ObservableWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lorg/wikipedia/views/ObservableWebView;->contentHeight:I

    .line 125
    invoke-direct {p0}, Lorg/wikipedia/views/ObservableWebView;->init()V

    return-void
.end method

.method private handleMouseRightClick(FF)V
    .locals 1

    .line 211
    new-instance v0, Lorg/wikipedia/views/-$$Lambda$ObservableWebView$2avmYbOlZyJN7HyRovoaHhKNPyk;

    invoke-direct {v0, p0, p1, p2}, Lorg/wikipedia/views/-$$Lambda$ObservableWebView$2avmYbOlZyJN7HyRovoaHhKNPyk;-><init>(Lorg/wikipedia/views/ObservableWebView;FF)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private init()V
    .locals 1

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onClickListeners:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onDownMotionEventListeners:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onUpOrCancelMotionEventListeners:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onContentHeightChangedListeners:Ljava/util/List;

    .line 134
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lorg/wikipedia/views/ObservableWebView;->touchSlop:I

    return-void
.end method


# virtual methods
.method public addOnClickListener(Lorg/wikipedia/views/ObservableWebView$OnClickListener;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnContentHeightChangedListener(Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onContentHeightChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnDownMotionEventListener(Lorg/wikipedia/views/ObservableWebView$OnDownMotionEventListener;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onDownMotionEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollChangeListener(Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnUpOrCancelMotionEventListener(Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onUpOrCancelMotionEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllListeners()V
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onDownMotionEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onUpOrCancelMotionEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onContentHeightChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onFastScrollListener:Lorg/wikipedia/views/ObservableWebView$OnFastScrollListener;

    return-void
.end method

.method public getLastTouchX()F
    .locals 1

    .line 202
    iget v0, p0, Lorg/wikipedia/views/ObservableWebView;->lastTouchX:F

    return v0
.end method

.method public getLastTouchY()F
    .locals 1

    .line 206
    iget v0, p0, Lorg/wikipedia/views/ObservableWebView;->lastTouchY:F

    return v0
.end method

.method public getTouchStartX()F
    .locals 1

    .line 238
    iget v0, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartX:F

    return v0
.end method

.method public getTouchStartY()F
    .locals 1

    .line 242
    iget v0, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartY:F

    return v0
.end method

.method public synthetic lambda$handleMouseRightClick$0$ObservableWebView(FF)V
    .locals 8

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    .line 211
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 218
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 219
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 223
    :cond_0
    iget p1, p0, Lorg/wikipedia/views/ObservableWebView;->drawEventsWhileSwiping:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/wikipedia/views/ObservableWebView;->drawEventsWhileSwiping:I

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 225
    invoke-static {}, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;->setChildViewScrolled()V

    .line 228
    :cond_1
    iget p1, p0, Lorg/wikipedia/views/ObservableWebView;->contentHeight:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 229
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p1

    iput p1, p0, Lorg/wikipedia/views/ObservableWebView;->contentHeight:I

    .line 230
    iget-object p1, p0, Lorg/wikipedia/views/ObservableWebView;->onContentHeightChangedListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;

    .line 231
    iget v1, p0, Lorg/wikipedia/views/ObservableWebView;->contentHeight:I

    invoke-interface {v0, v1}, Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;->onContentHeightChanged(I)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object p1

    sget-object v0, Lorg/wikipedia/views/ObservableWebView;->INVALIDATE_EVENT:Lorg/wikipedia/events/WebViewInvalidateEvent;

    invoke-virtual {p1, v0}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    sub-int p1, p2, p4

    .line 140
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p3

    sget v0, Lorg/wikipedia/views/ObservableWebView;->MAX_HUMAN_SCROLL:I

    const/4 v1, 0x0

    if-ge p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 141
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;

    .line 142
    invoke-interface {v2, p4, p2, p3}, Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;->onScrollChanged(IIZ)V

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    return-void

    .line 147
    :cond_2
    iget p2, p0, Lorg/wikipedia/views/ObservableWebView;->totalAmountScrolled:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/wikipedia/views/ObservableWebView;->totalAmountScrolled:I

    .line 148
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sget p2, Lorg/wikipedia/views/ObservableWebView;->FAST_SCROLL_THRESHOLD:I

    if-le p1, p2, :cond_3

    iget-object p1, p0, Lorg/wikipedia/views/ObservableWebView;->onFastScrollListener:Lorg/wikipedia/views/ObservableWebView$OnFastScrollListener;

    if-eqz p1, :cond_3

    .line 150
    invoke-interface {p1}, Lorg/wikipedia/views/ObservableWebView$OnFastScrollListener;->onFastScroll()V

    .line 151
    iput v1, p0, Lorg/wikipedia/views/ObservableWebView;->totalAmountScrolled:I

    .line 153
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/wikipedia/views/ObservableWebView;->lastScrollTime:J

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/wikipedia/views/ObservableWebView;->handleMouseRightClick(FF)V

    return v1

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/wikipedia/views/ObservableWebView;->lastTouchX:F

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/wikipedia/views/ObservableWebView;->lastTouchY:F

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto/16 :goto_2

    .line 180
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lorg/wikipedia/views/ObservableWebView;->touchSlop:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lorg/wikipedia/views/ObservableWebView;->touchSlop:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    .line 182
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/views/ObservableWebView$OnClickListener;

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-interface {v3, v4, v5}, Lorg/wikipedia/views/ObservableWebView$OnClickListener;->onClick(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 188
    :cond_3
    iput v2, p0, Lorg/wikipedia/views/ObservableWebView;->drawEventsWhileSwiping:I

    .line 190
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onUpOrCancelMotionEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;

    .line 191
    invoke-interface {v1}, Lorg/wikipedia/views/ObservableWebView$OnUpOrCancelMotionEventListener;->onUpOrCancelMotionEvent()V

    goto :goto_0

    .line 193
    :cond_5
    iput v2, p0, Lorg/wikipedia/views/ObservableWebView;->drawEventsWhileSwiping:I

    goto :goto_2

    .line 169
    :cond_6
    iget-object v0, p0, Lorg/wikipedia/views/ObservableWebView;->onDownMotionEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/ObservableWebView$OnDownMotionEventListener;

    .line 170
    invoke-interface {v1}, Lorg/wikipedia/views/ObservableWebView$OnDownMotionEventListener;->onDownMotionEvent()V

    goto :goto_1

    .line 172
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lorg/wikipedia/views/ObservableWebView;->lastScrollTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1f4

    cmp-long v5, v0, v3

    if-lez v5, :cond_8

    .line 173
    iput v2, p0, Lorg/wikipedia/views/ObservableWebView;->totalAmountScrolled:I

    .line 175
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartX:F

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/wikipedia/views/ObservableWebView;->touchStartY:F

    .line 177
    iput v2, p0, Lorg/wikipedia/views/ObservableWebView;->drawEventsWhileSwiping:I

    .line 198
    :goto_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
