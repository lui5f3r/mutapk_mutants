.class public Lorg/wikipedia/readinglist/sync/ReadingListClient;
.super Ljava/lang/Object;
.source "ReadingListClient.java"


# static fields
.field private static final MAX_CONTINUE_CYCLES:I = 0x100


# instance fields
.field private lastDateHeader:Ljava/lang/String;

.field private final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    return-void
.end method

.method private saveLastDateHeader(Lretrofit2/Response;)V
    .locals 1

    .line 236
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v0, "date"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->lastDateHeader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addPageToList(Ljava/lang/String;JLorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 168
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v0

    invoke-interface {v0, p2, p3, p1, p4}, Lorg/wikipedia/dataclient/RestService;->addEntryToReadingList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;

    if-eqz p2, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 174
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;->id()J

    move-result-wide p1

    return-wide p1

    .line 171
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Incorrect response format."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPagesToList(Ljava/lang/String;JLjava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 183
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 184
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 185
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_0

    .line 187
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 192
    :cond_2
    :try_start_0
    iget-object v4, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 193
    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v4

    new-instance v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;

    invoke-direct {v5, v1}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;-><init>(Ljava/util/List;)V

    invoke-interface {v4, p2, p3, p1, v5}, Lorg/wikipedia/dataclient/RestService;->addEntriesToReadingList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;)Lretrofit2/Call;

    move-result-object v4

    invoke-interface {v4}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v4

    .line 194
    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;

    if-eqz v5, :cond_3

    .line 198
    invoke-direct {p0, v4}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 200
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;->batch()[Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 201
    invoke-virtual {v7}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;->id()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 196
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Incorrect response format."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string p2, "entry-limit"

    .line 204
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_2
    return-object v0

    .line 208
    :cond_4
    throw p1
.end method

.method public createList(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 147
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/wikipedia/dataclient/RestService;->createReadingList(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;

    if-eqz p2, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 153
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;->id()J

    move-result-wide p1

    return-wide p1

    .line 150
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Incorrect response format."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteList(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v0

    invoke-interface {v0, p2, p3, p1}, Lorg/wikipedia/dataclient/RestService;->deleteReadingList(JLjava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 163
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    return-void
.end method

.method public deletePageFromList(Ljava/lang/String;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/wikipedia/dataclient/RestService;->deleteEntryFromReadingList(JJLjava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    return-void
.end method

.method public getAllLists()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 71
    :goto_0
    iget-object v4, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/wikipedia/dataclient/RestService;->getReadingLists(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v3

    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    if-eqz v4, :cond_3

    .line 73
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getLists()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 76
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getLists()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getContinueStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getContinueStr()Ljava/lang/String;

    move-result-object v4

    .line 78
    :goto_1
    invoke-direct {p0, v3}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 79
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0x100

    if-lt v2, v5, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    move-object v3, v4

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0

    .line 74
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incorrect response format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChangesSince(Ljava/lang/String;)Lorg/wikipedia/readinglist/sync/SyncedReadingLists;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    .line 90
    :goto_0
    iget-object v5, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v5}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v5

    invoke-interface {v5, p1, v4}, Lorg/wikipedia/dataclient/RestService;->getReadingListChangesSince(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v4

    invoke-interface {v4}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    if-eqz v5, :cond_5

    .line 95
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getLists()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 96
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getLists()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_0
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getEntries()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 99
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getEntries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_1
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getContinueStr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getContinueStr()Ljava/lang/String;

    move-result-object v5

    .line 102
    :goto_1
    invoke-direct {p0, v4}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 103
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x100

    if-lt v3, v6, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    move-object v4, v5

    goto :goto_0

    .line 104
    :cond_4
    :goto_2
    new-instance p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    invoke-direct {p1, v0, v1}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1

    .line 93
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Incorrect response format."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLastDateHeader()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->lastDateHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getListEntries(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 132
    :goto_0
    iget-object v4, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 133
    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v4

    invoke-interface {v4, p1, p2, v3}, Lorg/wikipedia/dataclient/RestService;->getReadingListEntries(JLjava/lang/String;)Lretrofit2/Call;

    move-result-object v3

    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    if-eqz v4, :cond_3

    .line 135
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getEntries()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 138
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getContinueStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getContinueStr()Ljava/lang/String;

    move-result-object v4

    .line 140
    :goto_1
    invoke-direct {p0, v3}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 141
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0x100

    if-lt v2, v5, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    move-object v3, v4

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0

    .line 136
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Incorrect response format."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getListsContaining(Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;",
            ")",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 113
    :goto_0
    iget-object v4, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v4

    .line 114
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->project()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->title()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lorg/wikipedia/dataclient/RestService;->getReadingListsContaining(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v3

    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    if-eqz v4, :cond_3

    .line 116
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getLists()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 119
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getLists()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getContinueStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getContinueStr()Ljava/lang/String;

    move-result-object v4

    .line 121
    :goto_1
    invoke-direct {p0, v3}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    .line 122
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0x100

    if-lt v2, v5, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    move-object v3, v4

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0

    .line 117
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Incorrect response format."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z
    .locals 1

    .line 220
    instance-of v0, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 221
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->serviceError()Lorg/wikipedia/dataclient/ServiceError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->serviceError()Lorg/wikipedia/dataclient/ServiceError;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/dataclient/ServiceError;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isServiceError(Ljava/lang/Throwable;)Z
    .locals 1

    .line 227
    instance-of v0, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code()I

    move-result p1

    const/16 v0, 0x190

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUnavailableError(Ljava/lang/Throwable;)Z
    .locals 1

    .line 232
    instance-of v0, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code()I

    move-result p1

    const/16 v0, 0x195

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setup(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/wikipedia/dataclient/RestService;->setupReadingLists(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "already-set-up"

    .line 47
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    throw p1
.end method

.method public tearDown(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/wikipedia/dataclient/RestService;->tearDownReadingLists(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "not-set-up"

    .line 58
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    throw p1
.end method

.method public updateList(Ljava/lang/String;JLorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/ReadingListClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object v0

    invoke-interface {v0, p2, p3, p1, p4}, Lorg/wikipedia/dataclient/RestService;->updateReadingList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 158
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->saveLastDateHeader(Lretrofit2/Response;)V

    return-void
.end method
