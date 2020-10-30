.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$0sEAyK_OVhfQnI6jRGoHtzUwroE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$0sEAyK_OVhfQnI6jRGoHtzUwroE;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    iput-object p2, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$0sEAyK_OVhfQnI6jRGoHtzUwroE;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$0sEAyK_OVhfQnI6jRGoHtzUwroE;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    iget-object v1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListsFragment$0sEAyK_OVhfQnI6jRGoHtzUwroE;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment;->lambda$maybeDeleteListFromIntent$2$ReadingListsFragment(Ljava/lang/Object;)V

    return-void
.end method
