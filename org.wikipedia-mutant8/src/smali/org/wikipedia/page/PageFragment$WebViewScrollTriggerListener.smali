.class Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;
.super Ljava/lang/Object;
.source "PageFragment.java"

# interfaces
.implements Lorg/wikipedia/views/ObservableWebView$OnContentHeightChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/PageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewScrollTriggerListener"
.end annotation


# instance fields
.field private stagedScrollY:I

.field final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 1440
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/page/PageFragment$1;)V
    .locals 0

    .line 1440
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;-><init>(Lorg/wikipedia/page/PageFragment;)V

    return-void
.end method


# virtual methods
.method public onContentHeightChanged(I)V
    .locals 1

    .line 1449
    iget v0, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->stagedScrollY:I

    if-lez v0, :cond_0

    int-to-float p1, p1

    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v0

    mul-float p1, p1, v0

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$900(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/views/ObservableWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->stagedScrollY:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 1450
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {p1}, Lorg/wikipedia/page/PageFragment;->access$900(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/views/ObservableWebView;

    move-result-object p1

    iget v0, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->stagedScrollY:I

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setScrollY(I)V

    const/4 p1, 0x0

    .line 1451
    iput p1, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->stagedScrollY:I

    :cond_0
    return-void
.end method

.method setStagedScrollY(I)V
    .locals 0

    .line 1444
    iput p1, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->stagedScrollY:I

    return-void
.end method
