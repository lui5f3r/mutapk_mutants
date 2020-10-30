.class public Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;
.super Ljava/lang/Object;
.source "WrapperSdkExceptionManager.java"


# static fields
.field static final sWrapperExceptionDataContainer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->sWrapperExceptionDataContainer:Ljava/util/Map;

    return-void
.end method

.method public static deleteWrapperExceptionData(Ljava/util/UUID;)V
    .locals 3

    const-string v0, "AppCenterCrashes"

    if-nez p0, :cond_0

    const-string p0, "Failed to delete wrapper exception data: null errorId"

    .line 79
    invoke-static {v0, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->getFile(Ljava/util/UUID;)Ljava/io/File;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-static {p0}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->loadWrapperExceptionData(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Failed to load wrapper exception data."

    .line 86
    invoke-static {v0, p0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/FileManager;->delete(Ljava/io/File;)Z

    :cond_2
    return-void
.end method

.method private static getFile(Ljava/util/UUID;)Ljava/io/File;
    .locals 2

    .line 125
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dat"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 127
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static loadWrapperExceptionData(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "AppCenterCrashes"

    const-string v1, "Failed to load wrapper exception data: null errorId"

    .line 100
    invoke-static {p0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 103
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->sWrapperExceptionDataContainer:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 107
    :cond_1
    invoke-static {p0}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->getFile(Ljava/util/UUID;)Ljava/io/File;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    sget-object v1, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->sWrapperExceptionDataContainer:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
