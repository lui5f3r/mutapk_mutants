.class final Lorg/wikipedia/commons/FilePageFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "FilePageFragment.kt"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/commons/FilePageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/commons/FilePageFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/commons/FilePageFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/commons/FilePageFragment$onViewCreated$1;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/wikipedia/commons/FilePageFragment$onViewCreated$1;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    sget v1, Lorg/wikipedia/R$id;->swipeRefreshLayout:I

    invoke-virtual {v0, v1}, Lorg/wikipedia/commons/FilePageFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "swipeRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 51
    iget-object v0, p0, Lorg/wikipedia/commons/FilePageFragment$onViewCreated$1;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    invoke-static {v0}, Lorg/wikipedia/commons/FilePageFragment;->access$loadImageInfo(Lorg/wikipedia/commons/FilePageFragment;)V

    return-void
.end method
