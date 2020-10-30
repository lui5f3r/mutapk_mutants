.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemCallback$KBnAFKsOLaxXWfcWVJHffsO3Q6E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/database/ReadingListPage;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemCallback$KBnAFKsOLaxXWfcWVJHffsO3Q6E;->f$0:Lorg/wikipedia/readinglist/database/ReadingListPage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$ReadingListPageItemCallback$KBnAFKsOLaxXWfcWVJHffsO3Q6E;->f$0:Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemCallback;->lambda$onClick$0(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    return-void
.end method
