.class Lcom/microsoft/appcenter/crashes/Crashes$9;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->queueException(Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/UUID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field final synthetic val$attachments:Ljava/lang/Iterable;

.field final synthetic val$errorId:Ljava/util/UUID;

.field final synthetic val$exceptionModelBuilder:Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$validatedProperties:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/String;Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;Ljava/util/Map;Ljava/lang/Iterable;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    iput-object p2, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$errorId:Ljava/util/UUID;

    iput-object p3, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$exceptionModelBuilder:Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;

    iput-object p5, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$validatedProperties:Ljava/util/Map;

    iput-object p6, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$attachments:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 660
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;-><init>()V

    .line 661
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$errorId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->setId(Ljava/util/UUID;)V

    .line 662
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->setUserId(Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$exceptionModelBuilder:Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;

    invoke-interface {v1}, Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;->buildExceptionModel()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->setException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V

    .line 664
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$validatedProperties:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->setProperties(Ljava/util/Map;)V

    .line 665
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v1}, Lcom/microsoft/appcenter/crashes/Crashes;->access$800(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v1

    const-string v2, "groupErrors"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    .line 668
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$errorId:Ljava/util/UUID;

    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/Crashes$9;->val$attachments:Ljava/lang/Iterable;

    invoke-static {v0, v1, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->access$900(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/Iterable;)V

    return-void
.end method
