.class public Lorg/wikipedia/page/LinkMovementMethodExt;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkMovementMethodExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;,
        Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;
    }
.end annotation


# instance fields
.field private handler:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;

.field private handlerWithText:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/wikipedia/page/LinkMovementMethodExt;->handler:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/wikipedia/page/LinkMovementMethodExt;->handlerWithText:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 35
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 37
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    .line 38
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    .line 39
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 40
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    int-to-float v0, v0

    .line 41
    invoke-virtual {v3, v2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 42
    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p2, v0, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 43
    array-length v2, v0

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    .line 46
    :try_start_0
    aget-object p3, v0, p1

    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    aget-object v2, v0, p1

    invoke-interface {p2, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p2, p3, v2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 48
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, ""

    .line 51
    :goto_0
    invoke-static {p2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 52
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object p3, p0, Lorg/wikipedia/page/LinkMovementMethodExt;->handler:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;

    if-eqz p3, :cond_0

    .line 54
    invoke-interface {p3, p1}, Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;->onUrlClick(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_0
    iget-object p3, p0, Lorg/wikipedia/page/LinkMovementMethodExt;->handlerWithText:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;

    if-eqz p3, :cond_1

    .line 56
    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->getTitleFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0, p2}, Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v1

    .line 61
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
