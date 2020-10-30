.class final Lorg/wikipedia/userprofile/ContributionsFragment$ItemCallback;
.super Ljava/lang/Object;
.source "ContributionsFragment.kt"

# interfaces
.implements Lorg/wikipedia/userprofile/ContributionsItemView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/userprofile/ContributionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;Lorg/wikipedia/userprofile/Contribution;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contribution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Lorg/wikipedia/userprofile/Contribution;->getEditType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 550
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/UserContributionFunnel;->logViewMisc()V

    goto :goto_0

    .line 549
    :cond_0
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/UserContributionFunnel;->logViewTag()V

    goto :goto_0

    .line 548
    :cond_1
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/UserContributionFunnel;->logViewCaption()V

    goto :goto_0

    .line 547
    :cond_2
    invoke-static {}, Lorg/wikipedia/analytics/UserContributionFunnel;->get()Lorg/wikipedia/analytics/UserContributionFunnel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/analytics/UserContributionFunnel;->logViewDescription()V

    .line 552
    :goto_0
    sget-object v0, Lorg/wikipedia/userprofile/ContributionDetailsActivity;->Companion:Lorg/wikipedia/userprofile/ContributionDetailsActivity$Companion;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/userprofile/ContributionDetailsActivity$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/userprofile/Contribution;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
