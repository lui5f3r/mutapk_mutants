.class public Lorg/wikipedia/page/PageViewModel;
.super Ljava/lang/Object;
.source "PageViewModel.java"


# instance fields
.field private curEntry:Lorg/wikipedia/history/HistoryEntry;

.field private forceNetwork:Z

.field private page:Lorg/wikipedia/page/Page;

.field private readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

.field private title:Lorg/wikipedia/page/PageTitle;

.field private titleOriginal:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheControl()Lokhttp3/CacheControl;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/wikipedia/page/PageViewModel;->shouldForceNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_NONE:Lokhttp3/CacheControl;

    :goto_0
    return-object v0
.end method

.method public getCurEntry()Lorg/wikipedia/history/HistoryEntry;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/wikipedia/page/PageViewModel;->curEntry:Lorg/wikipedia/history/HistoryEntry;

    return-object v0
.end method

.method public getPage()Lorg/wikipedia/page/Page;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/wikipedia/page/PageViewModel;->page:Lorg/wikipedia/page/Page;

    return-object v0
.end method

.method public getReadingListPage()Lorg/wikipedia/readinglist/database/ReadingListPage;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/wikipedia/page/PageViewModel;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    return-object v0
.end method

.method public getTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/wikipedia/page/PageViewModel;->title:Lorg/wikipedia/page/PageTitle;

    return-object v0
.end method

.method public getTitleOriginal()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/wikipedia/page/PageViewModel;->titleOriginal:Lorg/wikipedia/page/PageTitle;

    return-object v0
.end method

.method public isInReadingList()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/wikipedia/page/PageViewModel;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCurEntry(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/wikipedia/page/PageViewModel;->curEntry:Lorg/wikipedia/history/HistoryEntry;

    return-void
.end method

.method public setForceNetwork(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/wikipedia/page/PageViewModel;->forceNetwork:Z

    return-void
.end method

.method public setPage(Lorg/wikipedia/page/Page;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lorg/wikipedia/page/PageViewModel;->page:Lorg/wikipedia/page/Page;

    return-void
.end method

.method public setReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/wikipedia/page/PageViewModel;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    return-void
.end method

.method public setTitle(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/wikipedia/page/PageViewModel;->title:Lorg/wikipedia/page/PageTitle;

    return-void
.end method

.method public setTitleOriginal(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/wikipedia/page/PageViewModel;->titleOriginal:Lorg/wikipedia/page/PageTitle;

    return-void
.end method

.method public shouldForceNetwork()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/wikipedia/page/PageViewModel;->forceNetwork:Z

    return v0
.end method

.method public shouldLoadAsMobileWeb()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/wikipedia/page/PageViewModel;->title:Lorg/wikipedia/page/PageTitle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->isMainPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldSaveOffline()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/wikipedia/page/PageViewModel;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
