.class public Lorg/wikipedia/analytics/LoginFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "LoginFunnel.java"


# static fields
.field private static final REVISION:I = 0x13608d5

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppLogin"

.field public static final SOURCE_BLOCKED:Ljava/lang/String; = "blocked"

.field public static final SOURCE_EDIT:Ljava/lang/String; = "edit"

.field public static final SOURCE_LOGOUT_BACKGROUND:Ljava/lang/String; = "logout_background"

.field public static final SOURCE_NAV:Ljava/lang/String; = "navigation"

.field public static final SOURCE_ONBOARDING:Ljava/lang/String; = "onboarding"

.field public static final SOURCE_READING_MANUAL_SYNC:Ljava/lang/String; = "reading_lists_manual_sync"

.field public static final SOURCE_SETTINGS:Ljava/lang/String; = "settings"

.field public static final SOURCE_SUGGESTED_EDITS:Ljava/lang/String; = "suggestededits"

.field public static final SOURCE_SYSTEM:Ljava/lang/String; = "system"


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;)V
    .locals 2

    const-string v0, "MobileWikiAppLogin"

    const v1, 0x13608d5

    .line 23
    invoke-direct {p0, p1, v0, v1}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 8
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logCreateAccountAttempt()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "createAccountAttempt"

    aput-object v2, v0, v1

    .line 39
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logCreateAccountFailure()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "createAccountFailure"

    aput-object v2, v0, v1

    .line 45
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logCreateAccountSuccess()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "createAccountSuccess"

    aput-object v2, v0, v1

    .line 51
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "error"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "error_text"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 57
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logStart(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/analytics/LoginFunnel;->logStart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "start"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "edit_session_token"

    aput-object v1, v0, p1

    const/4 p1, 0x5

    aput-object p2, v0, p1

    .line 31
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logSuccess()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "success"

    aput-object v2, v0, v1

    .line 64
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method
