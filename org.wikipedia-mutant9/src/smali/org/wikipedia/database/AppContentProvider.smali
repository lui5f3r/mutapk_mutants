.class public Lorg/wikipedia/database/AppContentProvider;
.super Landroid/content/ContentProvider;
.source "AppContentProvider.java"


# static fields
.field private static final LOG:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "notify"

    const/4 v1, 0x1

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 105
    invoke-direct {p0}, Lorg/wikipedia/database/AppContentProvider;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/database/AppContentProvider;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private readableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 116
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getDatabase()Lorg/wikipedia/database/Database;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private writableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 120
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getDatabase()Lorg/wikipedia/database/Database;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 83
    invoke-static {p1}, Lorg/wikipedia/database/AppContentProviderEndpoint;->of(Landroid/net/Uri;)Lorg/wikipedia/database/AppContentProviderEndpoint;

    move-result-object v0

    .line 85
    invoke-direct {p0}, Lorg/wikipedia/database/AppContentProvider;->writableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 86
    invoke-virtual {v0}, Lorg/wikipedia/database/AppContentProviderEndpoint;->tables()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 88
    invoke-direct {p0, p1}, Lorg/wikipedia/database/AppContentProvider;->notifyChange(Landroid/net/Uri;)V

    return p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-static {p1}, Lorg/wikipedia/database/AppContentProviderEndpoint;->of(Landroid/net/Uri;)Lorg/wikipedia/database/AppContentProviderEndpoint;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lorg/wikipedia/database/AppContentProviderEndpoint;->type()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 66
    invoke-static {p1}, Lorg/wikipedia/database/AppContentProviderEndpoint;->of(Landroid/net/Uri;)Lorg/wikipedia/database/AppContentProviderEndpoint;

    move-result-object v0

    .line 68
    invoke-direct {p0}, Lorg/wikipedia/database/AppContentProvider;->writableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lorg/wikipedia/database/AppContentProviderEndpoint;->tables()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 72
    invoke-direct {p0, p1}, Lorg/wikipedia/database/AppContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 74
    invoke-virtual {v0, p2}, Lorg/wikipedia/database/AppContentProviderEndpoint;->itemUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lorg/wikipedia/database/AppContentProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_0
    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 32
    invoke-static {p1}, Lorg/wikipedia/database/AppContentProviderEndpoint;->of(Landroid/net/Uri;)Lorg/wikipedia/database/AppContentProviderEndpoint;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 35
    invoke-virtual {v0}, Lorg/wikipedia/database/AppContentProviderEndpoint;->tables()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lorg/wikipedia/database/AppContentProvider;->readableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez p2, :cond_0

    .line 48
    invoke-virtual {v0}, Lorg/wikipedia/database/AppContentProviderEndpoint;->projection()[Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v3, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 55
    invoke-direct {p0}, Lorg/wikipedia/database/AppContentProvider;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 94
    invoke-static {p1}, Lorg/wikipedia/database/AppContentProviderEndpoint;->of(Landroid/net/Uri;)Lorg/wikipedia/database/AppContentProviderEndpoint;

    move-result-object v0

    .line 96
    invoke-direct {p0}, Lorg/wikipedia/database/AppContentProvider;->writableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 97
    invoke-virtual {v0}, Lorg/wikipedia/database/AppContentProviderEndpoint;->tables()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 99
    invoke-direct {p0, p1}, Lorg/wikipedia/database/AppContentProvider;->notifyChange(Landroid/net/Uri;)V

    return p2
.end method
