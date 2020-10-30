.class public Lorg/wikipedia/history/UpdateHistoryTask;
.super Ljava/lang/Object;
.source "UpdateHistoryTask.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field private final entry:Lorg/wikipedia/history/HistoryEntry;


# direct methods
.method public constructor <init>(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/wikipedia/history/UpdateHistoryTask;->entry:Lorg/wikipedia/history/HistoryEntry;

    return-void
.end method

.method private getPreviousTimeSpent(Lorg/wikipedia/database/DatabaseClient;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/database/DatabaseClient<",
            "Lorg/wikipedia/history/HistoryEntry;",
            ">;)I"
        }
    .end annotation

    .line 35
    sget-object v0, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->SITE:Lorg/wikipedia/database/column/StrColumn;

    .line 36
    invoke-virtual {v0}, Lorg/wikipedia/database/column/Column;->qualifiedName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":siteCol == ? and :langCol == ? and :apiTitleCol == ?"

    const-string v2, ":siteCol"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->LANG:Lorg/wikipedia/database/column/StrColumn;

    .line 37
    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->qualifiedName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":langCol"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->API_TITLE:Lorg/wikipedia/database/column/StrColumn;

    .line 38
    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->qualifiedName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":apiTitleCol"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lorg/wikipedia/history/UpdateHistoryTask;->entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/wikipedia/history/UpdateHistoryTask;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 40
    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/wikipedia/history/UpdateHistoryTask;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 41
    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v0, v1, v2}, Lorg/wikipedia/database/DatabaseClient;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->TIME_SPENT:Lorg/wikipedia/database/column/IntColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/IntColumn;->val(Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 46
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v3
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 25
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-class v1, Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->getDatabaseClient(Ljava/lang/Class;)Lorg/wikipedia/database/DatabaseClient;

    move-result-object v0

    .line 26
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    iget-object v2, p0, Lorg/wikipedia/history/UpdateHistoryTask;->entry:Lorg/wikipedia/history/HistoryEntry;

    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/history/UpdateHistoryTask;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 27
    invoke-virtual {v3}, Lorg/wikipedia/history/HistoryEntry;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lorg/wikipedia/history/UpdateHistoryTask;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 28
    invoke-virtual {v4}, Lorg/wikipedia/history/HistoryEntry;->getSource()I

    move-result v4

    iget-object v5, p0, Lorg/wikipedia/history/UpdateHistoryTask;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 29
    invoke-virtual {v5}, Lorg/wikipedia/history/HistoryEntry;->getTimeSpentSec()I

    move-result v5

    invoke-direct {p0, v0}, Lorg/wikipedia/history/UpdateHistoryTask;->getPreviousTimeSpent(Lorg/wikipedia/database/DatabaseClient;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/util/Date;II)V

    sget-object v2, Lorg/wikipedia/database/contract/PageHistoryContract$Col;->SELECTION:[Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/database/DatabaseClient;->upsert(Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method
