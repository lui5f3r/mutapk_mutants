.class public Lorg/wikipedia/edit/summaries/EditSummaryHandler;
.super Ljava/lang/Object;
.source "EditSummaryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/edit/summaries/EditSummaryHandler$EditSummaryAdapter;
    }
.end annotation


# instance fields
.field private final container:Landroid/view/View;

.field private final summaryEdit:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/AutoCompleteTextView;Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler;->container:Landroid/view/View;

    .line 34
    iput-object p2, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler;->summaryEdit:Landroid/widget/AutoCompleteTextView;

    .line 36
    new-instance p2, Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryHandler$aXM_PnOwkPjwDtRjMl1hELuCSYc;

    invoke-direct {p2, p0}, Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryHandler$aXM_PnOwkPjwDtRjMl1hELuCSYc;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryHandler;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance p2, Lorg/wikipedia/edit/summaries/EditSummaryHandler$EditSummaryAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, p0, v0, v1, v2}, Lorg/wikipedia/edit/summaries/EditSummaryHandler$EditSummaryAdapter;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryHandler;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 39
    iget-object v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler;->summaryEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    new-instance v0, Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryHandler$_CQYwP5TJ5hq1MZqF9012n9OB10;

    invoke-direct {v0, p1}, Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryHandler$_CQYwP5TJ5hq1MZqF9012n9OB10;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroidx/cursoradapter/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 57
    iget-object p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler;->summaryEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p3}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/wikipedia/util/L10nUtil;->setConditionalTextDirection(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7

    .line 41
    sget-object v0, Lorg/wikipedia/edit/summaries/EditSummary;->DATABASE_TABLE:Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/wikipedia/database/DatabaseTable;->acquireClient(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object p0

    .line 43
    sget-object v2, Lorg/wikipedia/database/contract/EditHistoryContract$Summary;->URI:Landroid/net/Uri;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/wikipedia/database/contract/EditHistoryContract$Col;->SUMMARY:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->qualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " like ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 47
    sget-object v6, Lorg/wikipedia/database/contract/EditHistoryContract$Summary;->ORDER_MRU:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v1, p0

    .line 49
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {p0}, Lorg/wikipedia/util/ContentProviderClientCompat;->close(Landroid/content/ContentProviderClient;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_0
    invoke-static {p0}, Lorg/wikipedia/util/ContentProviderClientCompat;->close(Landroid/content/ContentProviderClient;)V

    .line 54
    throw p1
.end method


# virtual methods
.method public handleBackPressed()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler;->container:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$new$0$EditSummaryHandler(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler;->summaryEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    return-void
.end method

.method public persistSummary()V
    .locals 4

    .line 65
    iget-object v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler;->container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/WikipediaApp;

    .line 66
    new-instance v1, Lorg/wikipedia/edit/summaries/EditSummary;

    iget-object v2, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler;->summaryEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/edit/summaries/EditSummary;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 67
    const-class v2, Lorg/wikipedia/edit/summaries/EditSummary;

    invoke-virtual {v0, v2}, Lorg/wikipedia/WikipediaApp;->getDatabaseClient(Ljava/lang/Class;)Lorg/wikipedia/database/DatabaseClient;

    move-result-object v0

    sget-object v2, Lorg/wikipedia/database/contract/EditHistoryContract$Col;->SELECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/database/DatabaseClient;->upsert(Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler;->container:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
