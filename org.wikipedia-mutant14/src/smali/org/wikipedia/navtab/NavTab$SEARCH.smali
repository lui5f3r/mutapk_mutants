.class final Lorg/wikipedia/navtab/NavTab$SEARCH;
.super Lorg/wikipedia/navtab/NavTab;
.source "NavTab.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/navtab/NavTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SEARCH"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    const v3, 0x7f1001d7

    const v5, 0x7f08010e

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/navtab/NavTab;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public newInstance()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 29
    invoke-static {}, Lorg/wikipedia/history/HistoryFragment;->newInstance()Lorg/wikipedia/history/HistoryFragment;

    move-result-object v0

    const-string v1, "HistoryFragment.newInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
