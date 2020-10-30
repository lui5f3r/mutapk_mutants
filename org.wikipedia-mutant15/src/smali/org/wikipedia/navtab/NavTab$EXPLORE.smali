.class final Lorg/wikipedia/navtab/NavTab$EXPLORE;
.super Lorg/wikipedia/navtab/NavTab;
.source "NavTab.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/navtab/NavTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EXPLORE"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    new-instance v0, Lorg/wikipedia/analytics/ABTestExploreVsHomeFunnel;

    invoke-direct {v0}, Lorg/wikipedia/analytics/ABTestExploreVsHomeFunnel;-><init>()V

    invoke-virtual {v0}, Lorg/wikipedia/analytics/ABTestExploreVsHomeFunnel;->shouldSeeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f100155

    const v4, 0x7f100155

    goto :goto_0

    :cond_0
    const v0, 0x7f1001d1

    const v4, 0x7f1001d1

    .line 16
    :goto_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    .line 17
    new-instance v0, Lorg/wikipedia/analytics/ABTestExploreVsHomeFunnel;

    invoke-direct {v0}, Lorg/wikipedia/analytics/ABTestExploreVsHomeFunnel;-><init>()V

    invoke-virtual {v0}, Lorg/wikipedia/analytics/ABTestExploreVsHomeFunnel;->shouldSeeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080099

    const v6, 0x7f080099

    goto :goto_1

    :cond_1
    const v0, 0x7f0800c8

    const v6, 0x7f0800c8

    :goto_1
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 15
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/navtab/NavTab;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public newInstance()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 19
    invoke-static {}, Lorg/wikipedia/feed/FeedFragment;->newInstance()Lorg/wikipedia/feed/FeedFragment;

    move-result-object v0

    const-string v1, "FeedFragment.newInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
