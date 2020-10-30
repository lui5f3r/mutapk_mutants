.class public interface abstract Lorg/wikipedia/database/contract/SearchHistoryContract$Query;
.super Ljava/lang/Object;
.source "SearchHistoryContract.java"

# interfaces
.implements Lorg/wikipedia/database/contract/SearchHistoryContract$Col;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/database/contract/SearchHistoryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Query"
.end annotation


# static fields
.field public static final ORDER_MRU:Ljava/lang/String;

.field public static final PATH:Ljava/lang/String; = "history/query"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLES:Ljava/lang/String; = "recentsearches"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    sget-object v0, Lorg/wikipedia/database/contract/AppContentProviderContract;->AUTHORITY_BASE:Landroid/net/Uri;

    const-string v1, "history/query"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/database/contract/SearchHistoryContract$Query;->URI:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lorg/wikipedia/database/contract/SearchHistoryContract$Query;->PROJECTION:[Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/wikipedia/database/contract/SearchHistoryContract$Col;->TIMESTAMP:Lorg/wikipedia/database/column/DateColumn;

    invoke-virtual {v1}, Lorg/wikipedia/database/column/Column;->qualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/database/contract/SearchHistoryContract$Query;->ORDER_MRU:Ljava/lang/String;

    return-void
.end method
