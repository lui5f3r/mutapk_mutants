.class Lorg/wikipedia/main/MainFragment$PageChangeCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/main/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/main/MainFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/main/MainFragment;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lorg/wikipedia/main/MainFragment$PageChangeCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/main/MainFragment$1;)V
    .locals 0

    .line 515
    invoke-direct {p0, p1}, Lorg/wikipedia/main/MainFragment$PageChangeCallback;-><init>(Lorg/wikipedia/main/MainFragment;)V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment$PageChangeCallback;->this$0:Lorg/wikipedia/main/MainFragment;

    invoke-static {v0}, Lorg/wikipedia/main/MainFragment;->access$400(Lorg/wikipedia/main/MainFragment;)Lorg/wikipedia/main/MainFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    invoke-static {p1}, Lorg/wikipedia/navtab/NavTab;->of(I)Lorg/wikipedia/navtab/NavTab;

    move-result-object p1

    .line 521
    invoke-interface {v0, p1}, Lorg/wikipedia/main/MainFragment$Callback;->onTabChanged(Lorg/wikipedia/navtab/NavTab;)V

    :cond_0
    return-void
.end method
