.class final Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$5;
.super Ljava/lang/Object;
.source "ContributionsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder;->getContributionDetails(Lorg/wikipedia/userprofile/ContributionsItemView;Lorg/wikipedia/userprofile/Contribution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Lorg/wikipedia/userprofile/Contribution;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $contribution:Lorg/wikipedia/userprofile/Contribution;

.field final synthetic $itemView:Lorg/wikipedia/userprofile/ContributionsItemView;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/ContributionsItemView;Lorg/wikipedia/userprofile/Contribution;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$5;->$itemView:Lorg/wikipedia/userprofile/ContributionsItemView;

    iput-object p2, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$5;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p1, Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$5;->accept(Lorg/wikipedia/userprofile/Contribution;)V

    return-void
.end method

.method public final accept(Lorg/wikipedia/userprofile/Contribution;)V
    .locals 1

    .line 446
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$5;->$itemView:Lorg/wikipedia/userprofile/ContributionsItemView;

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$5;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/userprofile/ContributionsItemView;->setTitle(Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$5;->$itemView:Lorg/wikipedia/userprofile/ContributionsItemView;

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$ContributionItemHolder$getContributionDetails$5;->$contribution:Lorg/wikipedia/userprofile/Contribution;

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/Contribution;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/userprofile/ContributionsItemView;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method
