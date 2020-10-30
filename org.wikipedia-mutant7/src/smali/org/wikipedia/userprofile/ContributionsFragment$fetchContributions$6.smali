.class final Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$6;
.super Ljava/lang/Object;
.source "ContributionsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionsFragment;->fetchContributions()V
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
        "Ljava/util/ArrayList<",
        "Lorg/wikipedia/userprofile/Contribution;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/userprofile/ContributionsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$6;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$6;->accept(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final accept(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/wikipedia/userprofile/Contribution;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$6;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getAllContributions$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 272
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$6;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$createConsolidatedList(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    return-void
.end method
