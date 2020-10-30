.class public final Lorg/wikipedia/talk/TalkPageSeenDatabaseTableKt;
.super Ljava/lang/Object;
.source "TalkPageSeenDatabaseTable.kt"


# static fields
.field private static final PATH:Ljava/lang/String; = "talkpage/seen"

.field private static final TABLE:Ljava/lang/String; = "talkpageseen"

.field private static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    sget-object v0, Lorg/wikipedia/database/contract/AppContentProviderContract;->AUTHORITY_BASE:Landroid/net/Uri;

    const-string v1, "talkpage/seen"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/talk/TalkPageSeenDatabaseTableKt;->URI:Landroid/net/Uri;

    return-void
.end method

.method public static final synthetic access$getURI$p()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/talk/TalkPageSeenDatabaseTableKt;->URI:Landroid/net/Uri;

    return-object v0
.end method
