.class public Lcom/microsoft/appcenter/crashes/model/ErrorReport;
.super Ljava/lang/Object;
.source "ErrorReport.java"


# instance fields
.field private device:Lcom/microsoft/appcenter/ingestion/models/Device;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    return-object v0
.end method

.method public setAppErrorTime(Ljava/util/Date;)V
    .locals 0

    return-void
.end method

.method public setAppStartTime(Ljava/util/Date;)V
    .locals 0

    return-void
.end method

.method public setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->device:Lcom/microsoft/appcenter/ingestion/models/Device;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
