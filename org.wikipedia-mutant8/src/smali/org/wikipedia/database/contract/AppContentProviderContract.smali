.class public interface abstract Lorg/wikipedia/database/contract/AppContentProviderContract;
.super Ljava/lang/Object;
.source "AppContentProviderContract.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "org.wikipedia"

.field public static final AUTHORITY_BASE:Landroid/net/Uri;

.field public static final NOTIFY:Ljava/lang/String; = "notify"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 12
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "org.wikipedia"

    .line 13
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/database/contract/AppContentProviderContract;->AUTHORITY_BASE:Landroid/net/Uri;

    return-void
.end method
