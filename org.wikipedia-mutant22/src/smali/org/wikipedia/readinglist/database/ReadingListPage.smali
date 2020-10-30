.class public Lorg/wikipedia/readinglist/database/ReadingListPage;
.super Ljava/lang/Object;
.source "ReadingListPage.java"


# static fields
.field public static final DATABASE_TABLE:Lorg/wikipedia/readinglist/database/ReadingListPageTable;

.field public static final STATUS_QUEUE_FOR_DELETE:I = 0x2

.field public static final STATUS_QUEUE_FOR_FORCED_SAVE:I = 0x3

.field public static final STATUS_QUEUE_FOR_SAVE:I = 0x0

.field public static final STATUS_SAVED:I = 0x1


# instance fields
.field private transient accentAndCaseInvariantTitle:Ljava/lang/String;

.field private final apiTitle:Ljava/lang/String;

.field private atime:J

.field private description:Ljava/lang/String;

.field private displayTitle:Ljava/lang/String;

.field private transient downloadProgress:I

.field private id:J

.field private lang:Ljava/lang/String;

.field private listId:J

.field private mtime:J

.field private final namespace:Lorg/wikipedia/page/Namespace;

.field private offline:Z

.field private remoteId:J

.field private revId:J

.field private transient selected:Z

.field private sizeBytes:J

.field private status:I

.field private thumbUrl:Ljava/lang/String;

.field private final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lorg/wikipedia/readinglist/database/ReadingListPageTable;

    invoke-direct {v0}, Lorg/wikipedia/readinglist/database/ReadingListPageTable;-><init>()V

    sput-object v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->DATABASE_TABLE:Lorg/wikipedia/readinglist/database/ReadingListPageTable;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 48
    iput-object p2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 49
    iput-object p3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 50
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    iput-object p3, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 51
    iput-wide p5, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 56
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 57
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 61
    iput-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 62
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isDownloadingReadingListArticlesEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:I

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    iput-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 66
    iput-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    return-void
.end method

.method public static toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;
    .locals 7

    .line 70
    new-instance v6, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->description()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public accentAndCaseInvariantTitle()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->accentAndCaseInvariantTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->accentAndCaseInvariantTitle:Ljava/lang/String;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->accentAndCaseInvariantTitle:Ljava/lang/String;

    return-object v0
.end method

.method public apiTitle()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    return-object v0
.end method

.method public atime()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    return-wide v0
.end method

.method public atime(J)V
    .locals 0

    .line 136
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public description(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    return-void
.end method

.method public downloadProgress()I
    .locals 1

    .line 201
    iget v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    return v0
.end method

.method public downloadProgress(I)V
    .locals 0

    .line 197
    iput p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    return-void
.end method

.method public id()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    return-wide v0
.end method

.method public id(J)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    return-void
.end method

.method public lang()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public lang(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    return-void
.end method

.method public listId()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    return-wide v0
.end method

.method public listId(J)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    return-void
.end method

.method public mtime()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    return-wide v0
.end method

.method public mtime(J)V
    .locals 0

    .line 129
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    return-void
.end method

.method public namespace()Lorg/wikipedia/page/Namespace;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    return-object v0
.end method

.method public offline(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    return-void
.end method

.method public offline()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    return v0
.end method

.method public remoteId()J
    .locals 2

    .line 165
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    return-wide v0
.end method

.method public remoteId(J)V
    .locals 0

    .line 168
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    return-void
.end method

.method public revId()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->revId:J

    return-wide v0
.end method

.method public revId(J)V
    .locals 0

    .line 154
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->revId:J

    return-void
.end method

.method public saving()Z
    .locals 2

    .line 193
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public selected(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected:Z

    return-void
.end method

.method public selected()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected:Z

    return v0
.end method

.method public sizeBytes()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    return-wide v0
.end method

.method public sizeBytes(J)V
    .locals 0

    .line 147
    iput-wide p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    return-void
.end method

.method public status()I
    .locals 1

    .line 172
    iget v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:I

    return v0
.end method

.method public status(J)V
    .locals 0

    long-to-int p2, p1

    .line 175
    iput p2, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:I

    return-void
.end method

.method public thumbUrl()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public thumbUrl(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public title(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    return-void
.end method

.method public touch()V
    .locals 2

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    return-void
.end method

.method public wiki()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    return-object v0
.end method
