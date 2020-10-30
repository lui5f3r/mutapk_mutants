.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$N_DK7SkF16dO7GBAKaRLhTmOzJI;
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

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$N_DK7SkF16dO7GBAKaRLhTmOzJI;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListItemCallback$N_DK7SkF16dO7GBAKaRLhTmOzJI;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemCallback;->lambda$onRemoveAllOffline$4(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method
