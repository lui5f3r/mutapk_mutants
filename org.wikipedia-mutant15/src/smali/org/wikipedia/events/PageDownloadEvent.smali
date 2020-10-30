.class public Lorg/wikipedia/events/PageDownloadEvent;
.super Ljava/lang/Object;
.source "PageDownloadEvent.java"


# instance fields
.field private page:Lorg/wikipedia/readinglist/database/ReadingListPage;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/wikipedia/events/PageDownloadEvent;->page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    return-void
.end method


# virtual methods
.method public getPage()Lorg/wikipedia/readinglist/database/ReadingListPage;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/wikipedia/events/PageDownloadEvent;->page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    return-object v0
.end method
