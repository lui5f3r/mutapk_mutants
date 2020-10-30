.class public interface abstract Lorg/wikipedia/database/contract/PageImageHistoryContract$Image;
.super Ljava/lang/Object;
.source "PageImageHistoryContract.java"

# interfaces
.implements Lorg/wikipedia/database/contract/PageImageHistoryContract$Col;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/database/contract/PageImageHistoryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Image"
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "history/page/image"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLES:Ljava/lang/String; = "pageimages"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget-object v0, Lorg/wikipedia/database/contract/AppContentProviderContract;->AUTHORITY_BASE:Landroid/net/Uri;

    const-string v1, "history/page/image"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/database/contract/PageImageHistoryContract$Image;->URI:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lorg/wikipedia/database/contract/PageImageHistoryContract$Image;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
