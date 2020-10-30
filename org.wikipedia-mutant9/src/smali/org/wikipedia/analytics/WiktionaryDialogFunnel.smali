.class public Lorg/wikipedia/analytics/WiktionaryDialogFunnel;
.super Lorg/wikipedia/analytics/TimedFunnel;
.source "WiktionaryDialogFunnel.java"


# static fields
.field private static final REV_ID:I = 0x1147870

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppWiktionaryPopup"


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;)V
    .locals 3

    .line 17
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isProdRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "MobileWikiAppWiktionaryPopup"

    const v2, 0x1147870

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    .line 18
    iput-object p2, p0, Lorg/wikipedia/analytics/WiktionaryDialogFunnel;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logClose()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "text"

    aput-object v2, v0, v1

    .line 22
    iget-object v1, p0, Lorg/wikipedia/analytics/WiktionaryDialogFunnel;->text:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic pause()V
    .locals 0

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->pause()V

    return-void
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume()V
    .locals 0

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->resume()V

    return-void
.end method
