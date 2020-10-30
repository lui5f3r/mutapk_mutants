.class public Lorg/wikipedia/database/DatabaseClient;
.super Ljava/lang/Object;
.source "DatabaseClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final client:Landroid/content/ContentProviderClient;

.field private final databaseTable:Lorg/wikipedia/database/DatabaseTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/wikipedia/database/DatabaseTable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;Lorg/wikipedia/database/DatabaseTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Lorg/wikipedia/database/DatabaseTable<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/database/DatabaseClient;->client:Landroid/content/ContentProviderClient;

    .line 25
    iput-object p2, p0, Lorg/wikipedia/database/DatabaseClient;->databaseTable:Lorg/wikipedia/database/DatabaseTable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/wikipedia/database/DatabaseTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/wikipedia/database/DatabaseTable<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    invoke-virtual {p2, p1}, Lorg/wikipedia/database/DatabaseTable;->acquireClient(Landroid/content/Context;)Landroid/content/ContentProviderClient;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/database/DatabaseClient;-><init>(Landroid/content/ContentProviderClient;Lorg/wikipedia/database/DatabaseTable;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/database/DatabaseClient;->client:Landroid/content/ContentProviderClient;

    .line 65
    invoke-virtual {p0}, Lorg/wikipedia/database/DatabaseClient;->uri()Landroid/net/Uri;

    move-result-object v1

    .line 66
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/database/DatabaseClient;->getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 67
    invoke-virtual {p0, p1}, Lorg/wikipedia/database/DatabaseClient;->getPrimaryKeySelectionArgs(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {v0, v1, p2, p1}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public deleteAll()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    .line 51
    invoke-virtual {p0, v1, v0}, Lorg/wikipedia/database/DatabaseClient;->deleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public deleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/database/DatabaseClient;->client:Landroid/content/ContentProviderClient;

    invoke-virtual {p0}, Lorg/wikipedia/database/DatabaseClient;->uri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 58
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public fromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/wikipedia/database/DatabaseClient;->databaseTable:Lorg/wikipedia/database/DatabaseTable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/DatabaseTable;->fromCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/wikipedia/database/DatabaseClient;->databaseTable:Lorg/wikipedia/database/DatabaseTable;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/database/DatabaseTable;->getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrimaryKeySelectionArgs(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/wikipedia/database/DatabaseClient;->databaseTable:Lorg/wikipedia/database/DatabaseTable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/DatabaseTable;->getPrimaryKeySelectionArgs(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public persist(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 30
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/database/DatabaseClient;->client:Landroid/content/ContentProviderClient;

    invoke-virtual {p0}, Lorg/wikipedia/database/DatabaseClient;->uri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/wikipedia/database/DatabaseClient;->toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public select(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/database/DatabaseClient;->client:Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/wikipedia/database/DatabaseClient;->uri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/wikipedia/database/DatabaseClient;->select(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/wikipedia/database/DatabaseClient;->databaseTable:Lorg/wikipedia/database/DatabaseTable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/DatabaseTable;->toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public upsert(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/database/DatabaseClient;->client:Landroid/content/ContentProviderClient;

    .line 78
    invoke-virtual {p0}, Lorg/wikipedia/database/DatabaseClient;->uri()Landroid/net/Uri;

    move-result-object v1

    .line 79
    invoke-virtual {p0, p1}, Lorg/wikipedia/database/DatabaseClient;->toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v2

    .line 80
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/database/DatabaseClient;->getPrimaryKeySelection(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-virtual {p0, p1}, Lorg/wikipedia/database/DatabaseClient;->getPrimaryKeySelectionArgs(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lorg/wikipedia/database/DatabaseClient;->persist(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 88
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected uri()Landroid/net/Uri;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/wikipedia/database/DatabaseClient;->databaseTable:Lorg/wikipedia/database/DatabaseTable;

    invoke-virtual {v0}, Lorg/wikipedia/database/DatabaseTable;->getBaseContentURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
