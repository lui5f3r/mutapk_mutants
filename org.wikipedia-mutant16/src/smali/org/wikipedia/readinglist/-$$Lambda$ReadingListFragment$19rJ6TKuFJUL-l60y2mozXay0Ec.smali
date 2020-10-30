.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$19rJ6TKuFJUL-l60y2mozXay0Ec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$19rJ6TKuFJUL-l60y2mozXay0Ec;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    iput-object p2, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$19rJ6TKuFJUL-l60y2mozXay0Ec;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$19rJ6TKuFJUL-l60y2mozXay0Ec;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    iget-object v1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$19rJ6TKuFJUL-l60y2mozXay0Ec;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->lambda$setSearchQuery$6$ReadingListFragment(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
