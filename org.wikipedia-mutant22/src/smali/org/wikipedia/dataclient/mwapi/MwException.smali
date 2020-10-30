.class public Lorg/wikipedia/dataclient/mwapi/MwException;
.super Ljava/lang/RuntimeException;
.source "MwException.java"


# instance fields
.field private final error:Lorg/wikipedia/dataclient/mwapi/MwServiceError;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwException;->error:Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    return-void
.end method


# virtual methods
.method public getError()Lorg/wikipedia/dataclient/mwapi/MwServiceError;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwException;->error:Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwException;->error:Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getDetails()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwException;->error:Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
