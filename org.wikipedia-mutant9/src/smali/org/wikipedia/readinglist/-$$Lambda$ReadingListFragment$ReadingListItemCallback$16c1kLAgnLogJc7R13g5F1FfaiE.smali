.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$16c1kLAgnLogJc7R13g5F1FfaiE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$16c1kLAgnLogJc7R13g5F1FfaiE;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$16c1kLAgnLogJc7R13g5F1FfaiE;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->lambda$onSaveAllOffline$3(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method
