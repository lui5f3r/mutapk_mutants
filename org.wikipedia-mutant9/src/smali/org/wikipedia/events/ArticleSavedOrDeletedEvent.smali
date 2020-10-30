.class public Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;
.super Ljava/lang/Object;
.source "ArticleSavedOrDeletedEvent.java"


# instance fields
.field private isAdded:Z

.field private pages:[Lorg/wikipedia/readinglist/database/ReadingListPage;


# direct methods
.method public varargs constructor <init>(Z[Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;->pages:[Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 16
    iput-boolean p1, p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;->isAdded:Z

    return-void
.end method


# virtual methods
.method public getPages()[Lorg/wikipedia/readinglist/database/ReadingListPage;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;->pages:[Lorg/wikipedia/readinglist/database/ReadingListPage;

    return-object v0
.end method

.method public isAdded()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;->isAdded:Z

    return v0
.end method
