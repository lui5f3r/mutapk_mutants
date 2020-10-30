.class public final Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;
.super Lorg/wikipedia/analytics/ABTestFunnel;
.source "ABTestDescriptionEditChecksFunnel.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "descriptionEditChecks"

    const/4 v1, 0x2

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/analytics/ABTestFunnel;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private log(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "descriptionEditChecks_GroupA"

    goto :goto_0

    :cond_0
    const-string p1, "descriptionEditChecks_GroupB"

    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Lorg/wikipedia/analytics/ABTestFunnel;->logGroupEvent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public shouldSeeChecks()Z
    .locals 2

    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/analytics/ABTestFunnel;->isEnrolled()Z

    move-result v0

    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/analytics/ABTestFunnel;->getABTestGroup()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 12
    invoke-direct {p0, v1}, Lorg/wikipedia/analytics/ABTestDescriptionEditChecksFunnel;->log(Z)V

    :cond_1
    return v1
.end method
