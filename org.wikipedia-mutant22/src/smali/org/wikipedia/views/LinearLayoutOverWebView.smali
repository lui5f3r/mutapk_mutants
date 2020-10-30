.class public Lorg/wikipedia/views/LinearLayoutOverWebView;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutOverWebView.java"


# instance fields
.field private amountScrolled:I

.field private isPressed:Z

.field private slopReached:Z

.field private startY:F

.field private touchSlop:I

.field private webView:Lorg/wikipedia/views/ObservableWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->isPressed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->isPressed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->isPressed:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 50
    :cond_0
    iget-boolean v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->isPressed:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 52
    iget-object v3, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    neg-int v3, v3

    .line 53
    iget-object v5, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    sub-int/2addr v0, v5

    iget-object v5, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    .line 54
    iget v5, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 55
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 56
    iget v3, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->amountScrolled:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->amountScrolled:I

    .line 57
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->touchSlop:I

    if-le v3, v5, :cond_1

    iget-boolean v3, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    if-nez v3, :cond_1

    .line 61
    iput-boolean v1, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    .line 62
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 64
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    .line 67
    :cond_1
    iget-boolean v3, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    if-eqz v3, :cond_4

    .line 69
    iget-object v3, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    invoke-virtual {v3, v2, v0}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_0

    .line 75
    :cond_2
    iput-boolean v2, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->isPressed:Z

    .line 76
    iput-boolean v2, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    goto :goto_0

    .line 44
    :cond_3
    iput-boolean v1, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->isPressed:Z

    .line 45
    iput-boolean v2, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->startY:F

    .line 47
    iput v2, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->amountScrolled:I

    .line 81
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->slopReached:Z

    if-nez v0, :cond_6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_1
    return v1
.end method

.method public setWebView(Lorg/wikipedia/views/ObservableWebView;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/wikipedia/views/LinearLayoutOverWebView;->touchSlop:I

    return-void
.end method
