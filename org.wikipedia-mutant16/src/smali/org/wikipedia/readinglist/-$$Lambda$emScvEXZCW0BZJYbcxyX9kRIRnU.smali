.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$emScvEXZCW0BZJYbcxyX9kRIRnU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$emScvEXZCW0BZJYbcxyX9kRIRnU;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    return-void
.end method


# virtual methods
.method public final onUndoDeleteClicked()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$emScvEXZCW0BZJYbcxyX9kRIRnU;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    return-void
.end method