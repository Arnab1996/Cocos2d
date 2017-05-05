/**
* Copyright (c) 2012-2014 Microsoft Mobile and/or its subsidiary(-ies).
* All rights reserved.
*
* For the applicable distribution terms see the license text file included in
* the distribution.
*/

#include "CCCommon.h"
#include "ccMacros.h"

#include "CCFileUtils.h"
#include "CCString.h"

#include <QFile>

NS_CC_BEGIN;

static string s_strResourcePath = "";

void CCFileUtils::setResourcePath(const char* pszResourcePath)
{
    CCAssert(pszResourcePath != NULL,
             "[FileUtils setResourcePath] -- wrong resource path");

    s_strResourcePath = pszResourcePath;
    s_strResourcePath += "/";
}

const char* CCFileUtils::fullPathFromRelativePath(const char *pszRelativePath)
{
    CCString *pRet = new CCString();

    // check if relative path already contains the resource path
    if(strstr(pszRelativePath, s_strResourcePath.c_str()) == pszRelativePath)
    {
        pRet->autorelease();
        pRet->m_sString = pszRelativePath;
    }
    else
    {
        pRet->autorelease();
        pRet->m_sString = s_strResourcePath + pszRelativePath;
    }

    return pRet->m_sString.c_str();
}

const char *CCFileUtils::fullPathFromRelativeFile(const char *pszFilename,
                                                  const char *pszRelativeFile)
{
    std::string relativeFile = pszRelativeFile;
    CCString *pRet = new CCString();
    pRet->autorelease();
    pRet->m_sString = relativeFile.substr(0, relativeFile.rfind('/')+1);
    pRet->m_sString += pszFilename;
    return pRet->m_sString.c_str();
}

unsigned char* CCFileUtils::getFileData(const char *pszFileName,
                                        const char *pszMode,
                                        unsigned long *pSize)
{
    Q_UNUSED(pszMode);
    QString fullPath(pszFileName);
    unsigned char *pData = 0;

    QFile file(fullPath);
    if (!file.open(QIODevice::ReadOnly))
    {
        if (getIsPopupNotify())
        {
            std::string title = "Notification";
            std::string msg = "Get data from file(";
            msg.append(fullPath.toLatin1()).append(") failed!");
            CCMessageBox(msg.c_str(), title.c_str());
        }
        return NULL;
    }

    *pSize = file.size();
    pData = new unsigned char[*pSize];
    *pSize = file.read((char*)pData, *pSize);
    file.close();

    return pData;
}

void CCFileUtils::setResource(const char *pszZipFileName)
{
    Q_UNUSED(pszZipFileName);
    CCAssert(0, "Have not implement!");
}

int CCFileUtils::ccLoadFileIntoMemory(const char *filename, unsigned char **out)
{
    Q_UNUSED(filename);
    Q_UNUSED(out);
    CCAssert(0, "Have not implement!");
    return 0;
}

string CCFileUtils::getWriteablePath()
{
    // Return current resource path.
    // TODO: this will not work when using Qt resources
    return s_strResourcePath;
}

NS_CC_END;
