.class public Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
.super Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
.source "ErrorAttachmentLog.java"


# static fields
.field static final CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private contentType:Ljava/lang/String;

.field private data:[B

.field private errorId:Ljava/util/UUID;

.field private fileName:Ljava/lang/String;

.field private id:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 44
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;-><init>()V

    return-void
.end method

.method public static attachmentWithBinary([BLjava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    .locals 1

    .line 94
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;-><init>()V

    .line 95
    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setData([B)V

    .line 96
    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setFileName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p2}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setContentType(Ljava/lang/String;)V

    return-object v0
.end method

.method public static attachmentWithText(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    .locals 1

    .line 82
    sget-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "text/plain"

    invoke-static {p0, p1, v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->attachmentWithBinary([BLjava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 238
    const-class v1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_4

    .line 241
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 244
    :cond_2
    check-cast p1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    .line 245
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    if-eqz v1, :cond_3

    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    if-eqz v1, :cond_4

    :goto_0
    return v0

    .line 248
    :cond_4
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    if-eqz v1, :cond_6

    :goto_1
    return v0

    .line 251
    :cond_6
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_7
    iget-object v1, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_8

    :goto_2
    return v0

    .line 254
    :cond_8
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_9
    iget-object v1, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_a

    :goto_3
    return v0

    .line 257
    :cond_a
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->data:[B

    iget-object p1, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_b
    :goto_4
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->data:[B

    return-object v0
.end method

.method public getErrorId()Ljava/util/UUID;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "errorAttachment"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 263
    invoke-super {p0}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 264
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 265
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 266
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 267
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getId()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getErrorId()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 210
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->read(Lorg/json/JSONObject;)V

    const-string v0, "id"

    .line 211
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setId(Ljava/util/UUID;)V

    const-string v0, "errorId"

    .line 212
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setErrorId(Ljava/util/UUID;)V

    const-string v0, "contentType"

    .line 213
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setContentType(Ljava/lang/String;)V

    const-string v0, "fileName"

    const/4 v1, 0x0

    .line 214
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setFileName(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "data"

    .line 216
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setData([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 218
    new-instance v0, Lorg/json/JSONException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setData([B)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->data:[B

    return-void
.end method

.method public setErrorId(Ljava/util/UUID;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 224
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->write(Lorg/json/JSONStringer;)V

    .line 225
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getId()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "id"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getErrorId()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "errorId"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentType"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileName"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getData()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
