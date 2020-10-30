.class public interface abstract Lorg/wikipedia/database/contract/ReadingListContract;
.super Ljava/lang/Object;
.source "ReadingListContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/database/contract/ReadingListContract$Col;
    }
.end annotation


# static fields
.field public static final TABLE:Ljava/lang/String; = "localreadinglist"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    sget-object v0, Lorg/wikipedia/database/contract/AppContentProviderContract;->AUTHORITY_BASE:Landroid/net/Uri;

    const-string v1, "/locallist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/database/contract/ReadingListContract;->URI:Landroid/net/Uri;

    return-void
.end method
