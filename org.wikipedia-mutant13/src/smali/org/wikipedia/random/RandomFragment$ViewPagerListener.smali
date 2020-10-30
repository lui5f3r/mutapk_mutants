.class Lorg/wikipedia/random/RandomFragment$ViewPagerListener;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "RandomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/random/RandomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerListener"
.end annotation


# instance fields
.field private nextPageSelectedAutomatic:Z

.field private prevPosition:I

.field final synthetic this$0:Lorg/wikipedia/random/RandomFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/random/RandomFragment;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->this$0:Lorg/wikipedia/random/RandomFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/random/RandomFragment$1;)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;-><init>(Lorg/wikipedia/random/RandomFragment;)V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->this$0:Lorg/wikipedia/random/RandomFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/random/RandomFragment;->access$200(Lorg/wikipedia/random/RandomFragment;I)V

    .line 252
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->this$0:Lorg/wikipedia/random/RandomFragment;

    invoke-static {v0}, Lorg/wikipedia/random/RandomFragment;->access$300(Lorg/wikipedia/random/RandomFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->this$0:Lorg/wikipedia/random/RandomFragment;

    invoke-static {v1, v0}, Lorg/wikipedia/random/RandomFragment;->access$100(Lorg/wikipedia/random/RandomFragment;Lorg/wikipedia/page/PageTitle;)V

    .line 256
    :cond_0
    iget-boolean v0, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->nextPageSelectedAutomatic:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->this$0:Lorg/wikipedia/random/RandomFragment;

    invoke-static {v0}, Lorg/wikipedia/random/RandomFragment;->access$400(Lorg/wikipedia/random/RandomFragment;)Lorg/wikipedia/analytics/RandomizerFunnel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 257
    iget v0, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->prevPosition:I

    if-le p1, v0, :cond_1

    .line 258
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->this$0:Lorg/wikipedia/random/RandomFragment;

    invoke-static {v0}, Lorg/wikipedia/random/RandomFragment;->access$400(Lorg/wikipedia/random/RandomFragment;)Lorg/wikipedia/analytics/RandomizerFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/RandomizerFunnel;->swipedForward()V

    goto :goto_0

    :cond_1
    if-ge p1, v0, :cond_2

    .line 260
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->this$0:Lorg/wikipedia/random/RandomFragment;

    invoke-static {v0}, Lorg/wikipedia/random/RandomFragment;->access$400(Lorg/wikipedia/random/RandomFragment;)Lorg/wikipedia/analytics/RandomizerFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/RandomizerFunnel;->swipedBack()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->nextPageSelectedAutomatic:Z

    .line 264
    iput p1, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->prevPosition:I

    .line 265
    iget-object p1, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->this$0:Lorg/wikipedia/random/RandomFragment;

    invoke-static {p1}, Lorg/wikipedia/random/RandomFragment;->access$500(Lorg/wikipedia/random/RandomFragment;)V

    return-void
.end method

.method setNextPageSelectedAutomatic()V
    .locals 1

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lorg/wikipedia/random/RandomFragment$ViewPagerListener;->nextPageSelectedAutomatic:Z

    return-void
.end method
