.class public final Lorg/wikipedia/analytics/ABTestSuggestedEditsInterstitialFunnel;
.super Lorg/wikipedia/analytics/ABTestFunnel;
.source "ABTestSuggestedEditsInterstitialFunnel.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "suggestedEditsInterstitial"

    const/4 v1, 0x2

    .line 7
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/analytics/ABTestFunnel;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public logInterstitialShown()V
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/analytics/ABTestSuggestedEditsInterstitialFunnel;->shouldSeeInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "suggestedEditsInterstitial_GroupA"

    goto :goto_0

    :cond_0
    const-string v0, "suggestedEditsInterstitial_GroupB"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/ABTestFunnel;->logGroupEvent(Ljava/lang/String;)V

    return-void
.end method

.method public shouldSeeInterstitial()Z
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/analytics/ABTestFunnel;->getABTestGroup()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isPreBetaRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
