.class final Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$1;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/userprofile/ContributionsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$1;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Long;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$1;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$setTotalPageViews$p(Lorg/wikipedia/userprofile/ContributionsFragment;J)V

    .line 146
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$1;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {p1}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$getAdapter$p(Lorg/wikipedia/userprofile/ContributionsFragment;)Lorg/wikipedia/userprofile/ContributionsFragment$ContributionsEntryItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/wikipedia/userprofile/ContributionsFragment$fetchContributions$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
