.class final Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "ContributionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/userprofile/ContributionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeaderViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Lorg/wikipedia/userprofile/ContributionsHeaderView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/userprofile/ContributionsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/userprofile/ContributionsFragment;Lorg/wikipedia/userprofile/ContributionsHeaderView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/userprofile/ContributionsHeaderView;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bindItem()V
    .locals 3

    .line 360
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsHeaderView;

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-virtual {v0, v1}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->setCallback(Lorg/wikipedia/userprofile/ContributionsHeaderView$Callback;)V

    .line 361
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsHeaderView;

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v1}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getEditFilterType$p(Lorg/wikipedia/userprofile/ContributionsFragment;)I

    move-result v1

    iget-object v2, p0, Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v2}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getTotalContributionCount$p(Lorg/wikipedia/userprofile/ContributionsFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->updateFilterViewUI(II)V

    .line 362
    invoke-virtual {p0}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/userprofile/ContributionsHeaderView;

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$HeaderViewHolder;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v1}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getTotalPageViews$p(Lorg/wikipedia/userprofile/ContributionsFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/userprofile/ContributionsHeaderView;->updateTotalPageViews(J)V

    return-void
.end method
